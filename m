Delivery-date: Wed, 09 Oct 2024 07:46:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPWu-002789-2g
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 07:46:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPWt-0004iG-QU
	for lore@pengutronix.de; Wed, 09 Oct 2024 07:46:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uqJGlRKGwbaVbk1TiboSBTFfoY+rZPE8aTaiNzObdcc=; b=ZeYJo3WqmJHO64X9VRA1tpjXk2
	W8xX76McaBmg00ThhBK/Xn9JUV6N3BEUBcmXXCGJ1R9IfjR63p92usBiOMYMa9CcFZsyUwRJkrbM8
	xDy3Lg46UsJPwGOnyPbCHr7NgeB1VCPNaAUzEdY/ZAONAHPgSfQnfnJOTqnkXYhpf1WS4ZgIpXrS2
	N3zUQWUbc//ffdfpXB+1arJch+eqTEa9agojX/s0gzp2unBxCR68UYUXH4eXcvPZjEHhXtdbK+KIH
	VP++1vYQxTGHALXIjo6PwBCs7XIYpMlSO4BGRsd05A9v59r7nsRhqIQfTs1zSelRSOXlyieJLMDN+
	6pnhtf4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPWQ-00000007zau-1Wrh;
	Wed, 09 Oct 2024 05:46:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPWM-00000007zZb-2XfF
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 05:46:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPWL-0004cI-6J; Wed, 09 Oct 2024 07:46:01 +0200
Message-ID: <151044a1-3460-4cd8-a585-42d2401d7d54@pengutronix.de>
Date: Wed, 9 Oct 2024 07:46:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <mail@schlaraffenlan.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20241008-test_tftp-v2-1-509b8e861702@schlaraffenlan.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241008-test_tftp-v2-1-509b8e861702@schlaraffenlan.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_224602_842790_A40CFD9F 
X-CRM114-Status: GOOD (  32.92  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] test: pytest: introduce pytest for network, test tftp
 notfound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.10.24 13:21, Jonas Rebmann wrote:
> barebox already has a few pytest integration tests but none of them are
> networking related.
> 
> This patch introduces a test that asserts on bringing up at least one
> DHCP interface and, on any of these interfaces, a successful ICMP-ping
> from the DUT to the test pytest-host as well as a basic "File not Found"
> conversation between the DUT and the test pytest-host.
> 
> As the test requires a network connection to the barebox device, without
> the "network" feature the test is marked xfail. For the case of a qemu
> device we also assume DHCP to set serverip correctly. In any other case,
> it is set via console to that IP of the pytest-host that has the route
> to the barebox devices IP.
> 
> Signed-off-by: Jonas Rebmann <mail@schlaraffenlan.de>

This test ran successfully against an i.MX8MP with a switch and only
eth2 having link up.

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Changes in v2:
> - use random ephermal instead of hardcoded port for tftp test

I noticed an issue with this approach now: I had to disable my firewall,
because it's not known beforehand which port is going to be chosen...

Maybe there should also be a way to hardcode a user-supplied value,
but this shouldn't delay application of this patch.

Thanks!
Ahmad

> - test any interface doing DHCP, expect one to test without issues
> - fail on any tftp error code
> - cleanup
> - update commit message
> - Link to v1: https://lore.barebox.org/barebox/20240605-test_tftp-v1-1-5752ea677b06@schlaraffenlan.de
> ---
>  test/arm/virt@multi_v8_defconfig.yaml |   1 +
>  test/openrisc/generic_defconfig.yaml  |   2 +
>  test/py/test_network.py               | 106 ++++++++++++++++++++++++++++++++++
>  3 files changed, 109 insertions(+)
> 
> diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
> index d8f8ab5cbff35b5f9c414b0c7a66974a9a723794..42ce10328d7cc903010199364f5464d5146239e0 100644
> --- a/test/arm/virt@multi_v8_defconfig.yaml
> +++ b/test/arm/virt@multi_v8_defconfig.yaml
> @@ -14,6 +14,7 @@ targets:
>        BareboxTestStrategy: {}
>      features:
>        - virtio-mmio
> +      - network
>      runner:
>        tuxmake_arch: arm64
>  images:
> diff --git a/test/openrisc/generic_defconfig.yaml b/test/openrisc/generic_defconfig.yaml
> index 93ba9586c439d597c1a5e8deca44d1b99c902bed..56b70b8242f0e7f50f7ac732525a4857d8541744 100644
> --- a/test/openrisc/generic_defconfig.yaml
> +++ b/test/openrisc/generic_defconfig.yaml
> @@ -12,6 +12,8 @@ targets:
>          prompt: 'barebox@[^:]+:[^ ]+ '
>          bootstring: 'commandline:'
>        BareboxTestStrategy: {}
> +    features:
> +      - network
>  images:
>    barebox: !template "$LG_BUILDDIR/barebox"
>  imports:
> diff --git a/test/py/test_network.py b/test/py/test_network.py
> new file mode 100644
> index 0000000000000000000000000000000000000000..afaa259e2496740fabe61129e8e7d4190c5d4c50
> --- /dev/null
> +++ b/test/py/test_network.py
> @@ -0,0 +1,106 @@
> +import pytest
> +
> +from labgrid import driver,Environment
> +import socket
> +import threading
> +import re
> +import warnings
> +
> +# Setting the port to zero causes bind to choose a random ephermal port
> +TFTP_TEST_PORT = 0
> +
> +def get_source_addr(destination_ip, destination_port):
> +    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
> +    udp_socket.connect((destination_ip, destination_port))
> +    source_ip, _ = udp_socket.getsockname()
> +    return source_ip
> +
> +def tftp_setup_socket(listen_addr, listen_port=0):
> +    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
> +    udp_socket.bind((listen_addr, listen_port))
> +    udp_socket.settimeout(3)
> +    return udp_socket
> +
> +
> +def tftp_expect_notfound(filename, udp_socket):
> +    uname = filename.encode("ascii")
> +    messages = [
> +        b"\000\001" + uname + b"\000octet\000timeout\0005\000blksize\000512\000tsize\0000\000",
> +        b"\000\005\000\001File not found\000",
> +    ]
> +    data, addr = udp_socket.recvfrom(1024)
> +    udp_socket.sendto(messages[1], addr)
> +    udp_socket.close()
> +    assert data == messages[0]
> +
> +def tftp_conversation(barebox, barebox_interface, guestaddr):
> +
> +    listen_addr = "127.0.0.1"
> +    if not isinstance(barebox.console, driver.QEMUDriver):
> +        # sending an arbitrary udp package to determine the IP towards DUT
> +        listen_addr = get_source_addr(guestaddr, TFTP_TEST_PORT)
> +        barebox.run_check(f"eth0.serverip={listen_addr}")
> +
> +    barebox.run_check("ping $eth0.serverip", timeout=2)
> +
> +    tftp_socket=tftp_setup_socket(listen_addr, TFTP_TEST_PORT)
> +    tftp_port_used=tftp_socket.getsockname()[1]
> +
> +    tftp_thread = threading.Thread(
> +        target=tftp_expect_notfound,
> +        name="tftp_expect_notfound",
> +        args=("a", tftp_socket),
> +    )
> +    tftp_thread.daemon = True
> +    tftp_thread.start()
> +
> +    try:
> +        stdout, _, returncode = barebox.run(f"tftp -P {tftp_port_used} a", timeout=3)
> +        assert returncode != 0
> +    finally:
> +        # terminate a timed-out tftp
> +        barebox.console.sendcontrol("c")
> +        tftp_thread.join()
> +        barebox.run_check("ifdown eth0")
> +
> +
> +def test_barebox_network(barebox, env):
> +    # on DUTs without network feature, this is expected to fail
> +    # set xfail_strict=True to enforce specifying the network feature if available
> +    if not 'network' in env.get_target_features():
> +        pytest.xfail("network feature not specified")
> +
> +    stdout = barebox.run_check("ifup -a")
> +
> +    interfaces = []
> +
> +    for line in stdout:
> +        # eth0: DHCP client bound to address 10.0.2.15
> +        m = re.search('(eth[0-9]+): DHCP client bound to address (.*)', line)
> +        if m is None:
> +            continue
> +        else:
> +            interfaces.append((m.group(1), m.group(2)))
> +
> +    assert interfaces, "Network testing is only possible with at least one DHCP interface"
> +
> +    for iface in interfaces:
> +        ifname = iface[0]
> +        ifaddr = iface[1]
> +
> +        assert ifaddr != "0.0.0.0"
> +        assert ifaddr == barebox.run_check(f"echo ${ifname}.ipaddr")[0]
> +
> +        # Attempt a conversation with the DUT, which needs to succeed only on one interface
> +        success = False
> +
> +        try:
> +            tftp_conversation(barebox, ifname, ifaddr)
> +            success = True
> +            break
> +        except Exception as e:
> +            warnings.warn(f"Could not connect to DUT on {ifname} ({ifaddr}): {e}")
> +
> +        if not success:
> +            pytest.fail("Could not converse with DUT on any of the found DHCP interfaces!")
> +
> 
> ---
> base-commit: 5a2866973d386ffe9b9f5c429a0cbcd58bcef69c
> change-id: 20240605-test_tftp-9e12282d46a0
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


