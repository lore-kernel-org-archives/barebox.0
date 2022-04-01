Delivery-date: Fri, 01 Apr 2022 19:44:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naLKV-001sWq-Ly
	for lore@lore.pengutronix.de; Fri, 01 Apr 2022 19:44:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naLKS-0004B1-Sb
	for lore@pengutronix.de; Fri, 01 Apr 2022 19:44:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsjR0VUc3hW1h74ZKdp5RREzmVl1ypHuGJnVVA0ixKM=; b=jZHm/zwJLsw8Rr
	zn8/JvCIrrhbIDpazRFts9cDfDY7y5YSA/ta07XRA0pt1wJc85zbUPFFiuC954E/4tzG89Ov6EhPE
	IhpG29bq5ajQTlJTPgokmgNhuKl+4RPFwqI4T+ddDUOM0ygcSsayqbCeh0R1/w/k6MR6mEJLmVuft
	gGpFkNX1Z2bqoV7mGRpBXEhItKWKUtVqlXqEQVsWJ5Qu5Yd1Y4Cb2VvUqBtdTeCRQ6pldwYnUEHZb
	noJ4tiUpBSqQgOcdnBX98BB9jAZvP883MZLXxEELWL6vC5W+kMrp/m7pldTM//wD50bgWVGc7xslB
	jv85ZYwk4m59ZnMbIwqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naLIw-006jfV-9l; Fri, 01 Apr 2022 17:43:22 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145]
 helo=fx405.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naLIq-006jez-N0
 for barebox@lists.infradead.org; Fri, 01 Apr 2022 17:43:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx405.security-mail.net (Postfix) with ESMTP id 65D08323692
 for <barebox@lists.infradead.org>; Fri,  1 Apr 2022 19:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1648834994;
 bh=n1fASTfXDcwctV5tZi5tu1UO2ITVjs84hnRMVd9viZA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=vyMu12WMV4RewSRdi72osoahu2a0XQgvYx3cSKOtU9A483uKYE/liodkcbcsGBrmN
 smQCHd1wm1fTUg1hKJ9bMCoRYhFFE34RKYlHjficvQuDrA1a9jx5hgVhxdmiPM1PPV
 Ud2IVEbjOlF97IpZbVx2cZQ5MjmiC6mxGmz1QUCU=
Received: from fx405 (localhost [127.0.0.1]) by fx405.security-mail.net
 (Postfix) with ESMTP id D30033236E6; Fri,  1 Apr 2022 19:43:13 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx405.security-mail.net (Postfix) with ESMTPS id D54843236D0; Fri,  1 Apr
 2022 19:43:12 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 4E6A327E043E; Fri,  1 Apr 2022
 19:43:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 37CDF27E0442; Fri,  1 Apr 2022 19:43:12 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 M2xaTxhzYG7p; Fri,  1 Apr 2022 19:43:12 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 2571227E043E; Fri,  1 Apr 2022
 19:43:12 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <c879.624739b0.6a249.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 37CDF27E0442
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1648834992;
 bh=+F1FbPWLIn2bDdC7FFnOkQIlsPN0x1+ZHRn9X2PAsak=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=OUHhfx5J4s7K4rrTl8DyU0OLO3eXL/fomLPavkQjGfE69Z7XBAL5ili0nKeBaOpCg
 eEA6BHqCwyZ2g+qlLFPQ8YLbzynEff2GPZRdsv9Q7V/5aMEXihYsQj1AueQFPB7EKt
 1KFDpYVPvhqq8xa8JjwM7QkwXMoLwSU9CbR5ioXo=
Date: Fri, 1 Apr 2022 19:43:11 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220401174311.GG4351@tellis.lin.mbt.kalray.eu>
References: <20220401145902.GF4351@tellis.lin.mbt.kalray.eu>
 <20220401164558.603727-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401164558.603727-1-ahmad@a3f.at>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_104317_002208_68A71FCE 
X-CRM114-Status: GOOD (  19.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Getting more of Barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 01, 2022 at 06:45:58PM +0200, Ahmad Fatoum wrote:
> Finally, a no-frills way to join the currently relevant $supportgroup. Thx!
> 
> Please squash below for v2, so I don't need to carry patch for
> 
>   global.boot.default="$global.boot.default helpme"
> 
> around. Appreciated!
Thanks, applied as fixup for now. :)

> 
> -------- 8< --------
> 
>  arch/arm/configs/ircbox_defconfig        |  1 +
>  defaultenv/defaultenv-2-base/boot/helpme | 21 +++++++++++++++++++++
>  net/irc.c                                | 13 +++++++++++--
>  3 files changed, 33 insertions(+), 2 deletions(-)
>  create mode 100755 defaultenv/defaultenv-2-base/boot/helpme
> 
> diff --git a/arch/arm/configs/ircbox_defconfig b/arch/arm/configs/ircbox_defconfig
> index 854a80775d79..0232156e624e 100644
> --- a/arch/arm/configs/ircbox_defconfig
> +++ b/arch/arm/configs/ircbox_defconfig
> @@ -13,6 +13,7 @@ CONFIG_CONSOLE_ACTIVATE_NONE=y
>  CONFIG_CONSOLE_ALLOW_COLOR=y
>  CONFIG_PARTITION_DISK_EFI=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG=y
>  CONFIG_STATE=y
>  CONFIG_BOOTCHOOSER=y
>  CONFIG_RESET_SOURCE=y
> diff --git a/defaultenv/defaultenv-2-base/boot/helpme b/defaultenv/defaultenv-2-base/boot/helpme
> new file mode 100755
> index 000000000000..750445f297d7
> --- /dev/null
> +++ b/defaultenv/defaultenv-2-base/boot/helpme
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +. /env/data/config
> +
> +if [ -n "$CONFIG_ARM" ]; then
> +  supportgroup="armlinux"
> +elif [ -n "$CONFIG_RISCV" ]; then
> +  supportgroup="riscv"
> +elif [ -n "$CONFIG_OPENRISC" ]; then
> +  supportgroup="openrisc"
> +fi
> +
> +if [ -n "$supportgroup" ]; then
> +  readline "Want to ask for support on $supportgroup? [Y/n]  " linuxsupport
> +fi
> +
> +if [ "$linuxsupport" != "Y" ]; then
> +  supportgroup=barebox
> +fi
> +
> +irc -n $global.user -c "/j $supportgroup" irc.libera.chat
> diff --git a/net/irc.c b/net/irc.c
> index 5ce2dbb4c8be..b42d4afc2c30 100644
> --- a/net/irc.c
> +++ b/net/irc.c
> @@ -469,11 +469,15 @@ static int do_irc(int argc, char *argv[])
>  {
>  	int ret;
>  	char *host, *p;
> +	const char *command = NULL;
>  	uint16_t port = 6667;
>  	int opt;
>  
> -	while ((opt = getopt(argc, argv, "n:")) > 0) {
> +	while ((opt = getopt(argc, argv, "c:n:")) > 0) {
>  		switch (opt) {
> +		case 'c':
> +			command = optarg;
> +			break;
>  		case 'n':
>  			strlcpy(nick, optarg, sizeof(nick));
>  			break;
> @@ -516,6 +520,10 @@ static int do_irc(int argc, char *argv[])
>  	if (nick[0] == '\0')
>  		strlcpy(nick, "barebox", sizeof(nick));
>  	irc_login(host, "barebox");
> +
> +	if (command)
> +		irc_input(command);
> +
>  	while (con->state == TCP_ESTABLISHED) {
>  		int len;
>  		len = irc_readline(input_line, sizeof(input_line) - 1);
> @@ -541,11 +549,12 @@ out:
>  BAREBOX_CMD_HELP_START(irc)
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-n NICK\t", "nick to use")
> +BAREBOX_CMD_HELP_OPT ("-c COMMAND\t", "command to run after login")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(irc)
>  	.cmd		= do_irc,
>  	BAREBOX_CMD_DESC("IRC client")
> -	BAREBOX_CMD_OPTS("[-n] DESTINATION[[/]PORT]")
> +	BAREBOX_CMD_OPTS("[-nc] DESTINATION[[/]PORT]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_NET)
>  BAREBOX_CMD_END
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
> 
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=15e93.62472cc9.7208e.0&r=jmaselbas%40kalray.eu&s=barebox-bounces%2Bjmaselbas%3Dkalray.eu%40lists.infradead.org&o=Re%3A+Getting+more+of+Barebox&verdict=C&c=727c2b6f1cada1d321c2737135dbdd0d0d4abeda
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

