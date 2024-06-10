Delivery-date: Mon, 10 Jun 2024 11:23:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGbFb-003cAg-0g
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 11:23:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGbFa-0003m2-Cq
	for lore@pengutronix.de; Mon, 10 Jun 2024 11:23:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XDNvJrYZHDF+NqSpUtnwNqgI1Hwv5C5o9+jPCQbNfUM=; b=WkMk1r1u2pAekxi/4Fistrxiii
	IInT+9JpB8rXe79s5T2I9EoFn/GY6aKQC4f+SxJ9ZvrucvK9SIz+vq/dlMRhiU+CDW6wNjHyjte1B
	MmqEa8Lve5WUknFnW7WxtQSufbg4545QjSWTAdaoHeNudcsJGyDZTfM0M4fuE0pKR0RKCDXscwPKB
	0fitlcW71jFgoiHzzyjC9Q41fmhKsrNMbuLLjaPBkn+iSqpy/q9iCQo6PycOy4cpbpt5FVAeiKWzC
	Ox16pVJereHJ2xHdtMlalxBf0z1Vwn8PRP6rX42YY+f2xr61RfUVdsKEMgZ89p3KhGU4vrK7kbAAu
	mPK5qfyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGbF6-00000004RUN-23Kd;
	Mon, 10 Jun 2024 09:23:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGbF2-00000004RTs-3ZGK
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 09:23:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGbF1-0003jX-Hp; Mon, 10 Jun 2024 11:23:03 +0200
Message-ID: <fad1b506-7c57-4859-a9c9-256fd10f6ec7@pengutronix.de>
Date: Mon, 10 Jun 2024 11:23:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Jonas Rebmann <mail@schlaraffenlan.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240605-test_tftp-v1-1-5752ea677b06@schlaraffenlan.de>
Content-Language: en-US
In-Reply-To: <20240605-test_tftp-v1-1-5752ea677b06@schlaraffenlan.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_022304_936370_4A6379C7 
X-CRM114-Status: GOOD (  30.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] test: pytest: introduce pytest for network, test tftp
 notfound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jonas,

Thanks for your patch!

Some minor comments below.

On 05.06.24 15:13, Jonas Rebmann wrote:
> barebox already has a few pytest integration tests but none of them are
> networking related. This type of test requires a network connection to
> the barebox device, without the "network" feature the test is marked
> xfail. DHCP is assumed. For the case of qemu device we also assume DHCP
> to set serverip correctly. In any other case, it is set via console to
> that IP of the pytest-host that has the route to the barebox devices IP.
> The test asserts on a successful ICMP ping from the test device to the
> pytest-host as well as on a "No such file or directory" conversation
> from the barebox device to the pytest-host

Can you add some line breaks into the commit message for v2?

Also please add following paragraph (or something similar):

  Testing with real hardware and LG_PROXY would fail, but that's arguably
  ok for now.

Just to document the limitation.

> Signed-off-by: Jonas Rebmann <mail@schlaraffenlan.de>
> ---
>  test/arm/virt@multi_v8_defconfig.yaml |  1 +
>  test/openrisc/generic_defconfig.yaml  |  2 +

I wouldn't have expected that so few defconfigs have networking
out of the box. Once we have this first test, it'll be worthwhile
to add support for the other targets too.

>  test/py/test_network.py               | 69 +++++++++++++++++++++++++++++++++++
>  3 files changed, 72 insertions(+)
> 
> diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
> index d8f8ab5cbf..42ce10328d 100644
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
> index 93ba9586c4..56b70b8242 100644
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
> index 0000000000..00bcea3606
> --- /dev/null
> +++ b/test/py/test_network.py
> @@ -0,0 +1,69 @@
> +import pytest
> +
> +from labgrid import driver,Environment
> +import socket
> +import threading
> +
> +TFTP_TEST_PORT = 6968

Hmm, hardcoding this is a bit unfortunate as it could lead to tests for multiple DUTs
running in parallel to interfere with each other.

> +
> +def get_source_addr(destination_ip, destination_port):
> +    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
> +    udp_socket.connect((destination_ip, destination_port))
> +    source_ip, _ = udp_socket.getsockname()
> +    return source_ip
> +
> +def expect_tftp_notfound(filename, listen_port, listen_addr):
> +    uname = filename.encode("ascii")
> +    messages = [
> +        b"\000\001" + uname + b"\000octet\000timeout\0005\000blksize\000512\000tsize\0000\000",
> +        b"\000\005\000\001File not found\000",
> +    ]
> +    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
> +    udp_socket.bind((listen_addr, listen_port))

If you set listen_port to 0, you get an ephemeral port assigned to avoid
port number clashes.
You'll probably want to move this out of the thread then.

> +    udp_socket.settimeout(3)
> +    data, addr = udp_socket.recvfrom(1024)
> +    udp_socket.sendto(messages[1], addr)
> +    udp_socket.close()
> +    assert data == messages[0]
> +
> +def test_skip():
> +    pytest.mark.skip("no network adapter available")

Unused.

> +def test_barebox_tftp_not_found(barebox, barebox_config, env):
> +    # on duts without network feature, this is expected to fail
> +    # set xfail_strict=True to enforce specifying the network feature if available
> +    if not 'network' in env.get_target_features():
> +        pytest.xfail("network feature not specified")

Nice. Didn't know about xfail.

> +    barebox.run_check("ifup eth0")

I don't think we have any such boards in Qemu, but in general boards
can have multiple Ethernet ports and the first might not even
have a link. Please use ifup -a instead to bring up all interfaces.
If multiple ports have a link, maybe test on all of them, e.g.:

for line in stdout:
    m = re.search('DHCP client bound to address (.*)', line)
    if m is None:
        continue
 
    do_what_you_currently_do(address=m.group(1))

> +    guestaddr = barebox.run_check("echo $eth0.ipaddr")[0]
> +    assert guestaddr != "0.0.0.0"
> +
> +    listen_addr = "127.0.0.1"
> +    if not isinstance(barebox.console, driver.QEMUDriver):
> +        # sending an arbitrary udp package to determine the IP towards dut
> +        listen_addr = get_source_addr(guestaddr, TFTP_TEST_PORT)
> +        barebox.run_check(f"eth0.serverip={listen_addr}")
> +
> +    barebox.run_check("ping $eth0.serverip", timeout=2)
> +
> +    tftp_thread = threading.Thread(
> +        target=expect_tftp_notfound,
> +        name="expect_tftp_notfound",
> +        args=("a", TFTP_TEST_PORT, listen_addr),
> +    )
> +    tftp_thread.daemon = True
> +    tftp_thread.start()
> +    
> +    try:
> +        stdout, _, returncode = barebox.run(f"tftp -P {TFTP_TEST_PORT} a", timeout=3)
> +        assert returncode == 127

returncode != 0. We don't care which error code.

> +    except:
> +        raise

This is unneeded.

> +    finally:
> +        # terminate a timed-out ftpf

s/ftpf/tftp/

> +        barebox.console.sendcontrol("c")
> +
> +    tftp_thread.join()
> +    barebox.run_check("ifdown eth0")

These should be moved into the finally clause too, right?

Cheers,
Ahmad

> +
> 
> ---
> base-commit: 55cf43c442c260846b393c2099d4a72d0ebdbdd9
> change-id: 20240605-test_tftp-9e12282d46a0
> 
> Best regards,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



