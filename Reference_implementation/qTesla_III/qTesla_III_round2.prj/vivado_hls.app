<project xmlns="com.autoesl.autopilot.project" name="qTesla_III_round2.prj" top="crypto_sign_open">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../../newtest_sign.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" blackbox="false"/>
        <file name="sign.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="sample.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="tests/rng.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="poly.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="pack.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="gauss.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="sha3/fips202.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="consts.c" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="tests/aes.c" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="sign_open" status="inactive"/>
        <solution name="sign" status="inactive"/>
        <solution name="sign_temp" status="inactive"/>
        <solution name="keypair" status="inactive"/>
        <solution name="temp" status="active"/>
    </solutions>
</project>

