Delivery-date: Thu, 09 Sep 2021 12:26:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOHGg-00064B-P6
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 12:26:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOHGf-0005Vt-Ew
	for lore@pengutronix.de; Thu, 09 Sep 2021 12:26:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VHdV1jwWm1yet7sp+b3F+yLCdnywdG/kLXaGZiOGguA=; b=4+E/9xAL/GFjzlDRHPyiiv/Zuv
	JYwxErGwhHsGR0PCR2MjmMN081bW2WX/mc7pfITHRbKNlO/CBFnWB60HbsYKrWjrhIFRsrJnXB2nm
	gXYPv7Tz/8+Hzt6FeIem8B8RV2lTp6B3uTK8QwGrDaBYwe3eSZ41jouaVFYHqQaPk5AYb7/9mk+Xp
	bTXnPzoRHRzPDOva1XSnuCmnIZ5x7tfNwX1PGfSMM+UmTo7s3Npc07wpNIa4+js7gzHt9HBGYGXta
	gQOynF+Xc50RK6NeMIhugcQqCt7VYdf9q0fFu0evtZM6vu2/Tl9gZptEHUb/ITISWMokAvc3KZW9V
	YDe/cXEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOHEz-008tet-Li; Thu, 09 Sep 2021 10:25:09 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOHEt-008tdA-IU
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 10:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1631183096;
 bh=IfwHNXQ3K6+culvCyTmkAn32+BTA6rDdJM8HYjDhX5M=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=dB+FjxbfcRZrwAlOz8FWFGnZW2FbQAFJmYSpPM+B22EmxKq0jycoeWnScpLIrgLdS
 mPDMv6LJRb1ED7SIwNE6lPrD6GlZN3779qz1wrO4x5PuWE0bgacnnacEIC8nQv6MIR
 Qxzfs8gjTpsxi41Gahr3rdYSPEa9/JLixYNcni6k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.44] ([95.91.192.147]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MWzjt-1mQ7p8346D-00XKL0; Thu, 09
 Sep 2021 12:24:55 +0200
To: Lucas Stach <l.stach@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20210909091349.9446-1-o.rempel@pengutronix.de>
 <20210909091349.9446-8-o.rempel@pengutronix.de>
 <045b22f231bdec7a513a36f7044d13e8b224b9d4.camel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <0acb3e18-4016-fb18-087b-58eafb8b84ff@rempel-privat.de>
Date: Thu, 9 Sep 2021 12:24:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <045b22f231bdec7a513a36f7044d13e8b224b9d4.camel@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:UHFd9sm/tmauGy+ZGwYEi19IeYQdnjrcelJwoMk0+SHFu/ztmv+
 Nr1jo9SmM+vo4VWJqU2NluJgyfiyHLNrHwcCljZGswtoENBXH7Am/5snCMe8QGU4ysn6Cl+
 WXoXcTTqWU+GQz/Ukj7bPaZQjQThmZiG1GNzWAEAMGEbyld9UK/55+lOmdjBA27l8nHfdxI
 +Wicflx7RoLVT+VwYdupg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:DQTmoVtv/zc=:U2XyayI3ZpiCTj6XCDQJGq
 qhmTLwp4ameXQlZysRrzb1pEPdRdz97YbFYy/O9uTC0vhbvErrrm9+nRxXeTz/tndmhkJMA/G
 vGMvMFgerwfOqjxV9A6lK6jL47vj/2RCPRJRWWFbjedW7MIt/WFyiFQLv1madZT2alJs1juc7
 lscyoKm+0q6jaftjOAZjI0NbtEd5YPNDnNDboPXkjFR60zfaIt+a+nBb6BTUAm8ZmODNWmdqu
 PXvduYeVb5x3rs2xB0/oksDdPQEyPG34J0E7duN74f2Z/1fartNtlgog6ha4+0rd/38SR03EY
 NWNsCv8kvzlXc17VP0fXUuIs2KyaQff0cJphFHrL7Dws+MQ/HzsCwhD0HNgQULrC72eFyREc9
 zhI2vVbXrZuqIrQSmIfZXR1ttSA5LqqSYtQWwQ07mOo5VOKFIdIgtjyP0zQtwAYPaJfHoIAeI
 fXHuVHSSP9flmZ0iICJfZ813Hs6XG3z57PVtmmRT8Z+zrwRJjC5Z3LTrI4zUQnJGc9HMqP9p2
 0P64ZIO9Ikt4KwtlnSim4G34iyGAl81MbmgBS1ErxFiBLfCxalaB62wRtF2TwM+RTFFcZB4kN
 isWcMQP4ZfqoHyy6ZUxLwZBYNVBzSrG4+GsYzWWu+IMhPgqL4r7aouLqQfLbTbjpQtcCfn0OV
 kcWTwJMElU53kApuOlheXtnKwtnJ4vRK5cKWIXazzkbnPHfwTwur76RQ4DhyTYoHKdLuvz/YU
 pBJV1V9EUqNqJM7Hkz73cPTcEcecE0VHLD9BkyLG11qnmBVuTtL+OXYPy9zV1YUU3YrTh6WBL
 xZkjecjD8VF+fTvKRkqFiZHpZ13uqNADzlEFVbsmPkarqKKN+kDCROjmzyVZ/ayb9m0GVvC9S
 mGKfPY62QZdDhR8zOILhy1dW0VYSdwmvzLvGKstbymu4aqDrke/LENjqYlcLJPT2K0n4XHlv6
 XPPQeyjY1ONbEmIb+Iwrz8mBRvwQDZp4QjdPlFGeJJlPUiPp5i4phtVkn7dIIlDEeJxR86n8L
 V8Z+Ps7tMd7LsNbNs4x8rj7RCGuy4Hwnz5sfGHqTPsNlaH92svowcSD+Kdi1A/QgddRGcfX82
 OVeWeBFGSlA4NI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_032504_008090_7D331333 
X-CRM114-Status: GOOD (  23.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 8/8] ifup: optimize net boot time for USB ethernet
 adapters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 09.09.21 um 11:28 schrieb Lucas Stach:
> Am Donnerstag, dem 09.09.2021 um 11:13 +0200 schrieb Oleksij Rempel:
>> On some boards, forcing detection of all device will take noticeable more
>> time. To reduce this time, we need to scan only for USB devices.
>>
>> So, provide option do ifup by forcing only USB scan.
>
> Why is this force detection even necessary? Is there a reason you can't
> just put a eth-discover script in /env/network/ in the defaultenv of
> this board to do the right thing when Barebox tries to bring up the
> network interfaces?

This is board specific decision. The flag which indicate if board should
do this is provided by the board code. So, if board code should set some
flags anyway, why not to interpret this flags by some common code aswell?

> Regards,
> Lucas
>
>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  Documentation/user/networking.rst |  3 +++
>>  arch/arm/boards/skov-imx6/board.c |  2 +-
>>  include/net.h                     |  1 +
>>  net/ifup.c                        | 16 ++++++++++++++--
>>  4 files changed, 19 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
>> index 9231ebde56..18936ff169 100644
>> --- a/Documentation/user/networking.rst
>> +++ b/Documentation/user/networking.rst
>> @@ -55,6 +55,9 @@ device:
>>  |                              |              | detected automatically during start (i.e. for  |
>>  |                              |              | USB network adapters)                          |
>>  +------------------------------+--------------+------------------------------------------------+
>> +| global.net.ifup_detect_usb   | boolean      | Set to true if you use USB network adapter     |
>> +|                              |              | and global.net.ifup_force_detect is too slow.  |
>> ++------------------------------+--------------+------------------------------------------------+
>>
>>  The first step for networking is configuring the network device. The network
>>  device is usually ``eth0``. The current configuration can be viewed with the
>> diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
>> index 9a32e68f21..bd00c16157 100644
>> --- a/arch/arm/boards/skov-imx6/board.c
>> +++ b/arch/arm/boards/skov-imx6/board.c
>> @@ -626,7 +626,7 @@ no_switch:
>>  		pr_warn("Can't disable eth0\n");
>>  	}
>>
>> -	globalvar_set("net.ifup_force_detect", "true");
>> +	globalvar_set("net.ifup_detect_usb", "true");
>>
>>  	return 0;
>>  }
>> diff --git a/include/net.h b/include/net.h
>> index aad28e4f4c..15cd921f56 100644
>> --- a/include/net.h
>> +++ b/include/net.h
>> @@ -488,6 +488,7 @@ int net_icmp_send(struct net_connection *con, int len);
>>  void led_trigger_network(enum led_trigger trigger);
>>
>>  #define IFUP_FLAG_FORCE		(1 << 0)
>> +#define IFUP_FLAG_USB		(1 << 1)
>>
>>  int ifup_edev(struct eth_device *edev, unsigned flags);
>>  int ifup(const char *name, unsigned flags);
>> diff --git a/net/ifup.c b/net/ifup.c
>> index 1870f74017..5cb2b52716 100644
>> --- a/net/ifup.c
>> +++ b/net/ifup.c
>> @@ -20,6 +20,7 @@
>>  #include <globalvar.h>
>>  #include <magicvar.h>
>>  #include <linux/stat.h>
>> +#include <usb/usb.h>
>>
>>  static int eth_discover(char *file)
>>  {
>> @@ -260,6 +261,7 @@ int ifdown(const char *ethname)
>>  }
>>
>>  static int net_ifup_force_detect;
>> +static int net_ifup_detect_usb;
>>
>>  int ifup_all(unsigned flags)
>>  {
>> @@ -282,6 +284,9 @@ int ifup_all(unsigned flags)
>>
>>  	closedir(dir);
>>
>> +	if ((flags & IFUP_FLAG_USB) || net_ifup_detect_usb)
>> +		usb_rescan();
>> +
>>  	if ((flags & IFUP_FLAG_FORCE) || net_ifup_force_detect ||
>>  	    list_empty(&netdev_list))
>>  		device_detect_all();
>> @@ -303,6 +308,7 @@ void ifdown_all(void)
>>  static int ifup_all_init(void)
>>  {
>>  	globalvar_add_simple_bool("net.ifup_force_detect", &net_ifup_force_detect);
>> +	globalvar_add_simple_bool("net.ifup_detect_usb", &net_ifup_detect_usb);
>>
>>  	return 0;
>>  }
>> @@ -310,6 +316,8 @@ late_initcall(ifup_all_init);
>>
>>  BAREBOX_MAGICVAR(global.net.ifup_force_detect,
>>                   "net: force detection of devices on ifup -a");
>> +BAREBOX_MAGICVAR(global.net.ifup_detect_usb,
>> +                 "net: scan usb without forcing detection of all devices on ifup -a");
>>
>>  #if IS_ENABLED(CONFIG_NET_CMD_IFUP)
>>
>> @@ -319,11 +327,14 @@ static int do_ifup(int argc, char *argv[])
>>  	unsigned flags = 0;
>>  	int all = 0;
>>
>> -	while ((opt = getopt(argc, argv, "af")) > 0) {
>> +	while ((opt = getopt(argc, argv, "afu")) > 0) {
>>  		switch (opt) {
>>  		case 'f':
>>  			flags |= IFUP_FLAG_FORCE;
>>  			break;
>> +		case 'u':
>> +			flags |= IFUP_FLAG_USB;
>> +			break;
>>  		case 'a':
>>  			all = 1;
>>  			break;
>> @@ -348,12 +359,13 @@ BAREBOX_CMD_HELP_TEXT("")
>>  BAREBOX_CMD_HELP_TEXT("Options:")
>>  BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
>>  BAREBOX_CMD_HELP_OPT ("-f",  "Force. Configure even if ip already set")
>> +BAREBOX_CMD_HELP_OPT ("-u",  "Probe USB ")
>>  BAREBOX_CMD_HELP_END
>>
>>  BAREBOX_CMD_START(ifup)
>>  	.cmd		= do_ifup,
>>  	BAREBOX_CMD_DESC("bring a network interface up")
>> -	BAREBOX_CMD_OPTS("[-af] [INTF]")
>> +	BAREBOX_CMD_OPTS("[-afu] [INTF]")
>>  	BAREBOX_CMD_GROUP(CMD_GRP_NET)
>>  	BAREBOX_CMD_COMPLETE(eth_complete)
>>  	BAREBOX_CMD_HELP(cmd_ifup_help)
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

