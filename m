Delivery-date: Mon, 15 Dec 2025 12:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6eP-00Biyb-1c
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6eO-0004vs-0f
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jYs36f+vdkma48s2qoDwUORmdDF7urTTnqLp8+nnhv8=; b=Bo2Igfn6gUp4CVDo7K4K7NDU4D
	r87pYvy3MDXauTvSlqZ5T/altJThaupps/cOrZOOdpd0Kb+QrEPsclGXWtBVFwe7dQ0RZT6FNFQx5
	uh9uLxTP7OAjfiY4pWnZYQOSoQqwXW7MtV3ECs96RQpkAuDE8/cWeHZCG9NSNkpho2h3JZMQLGu6o
	sWw9hApvtS5MT1IpnLMvmI6JEUrAIqgqmtBAPxYWPnreHr3Wveb4Kan2LyxL2XuA7veOiG91wCf5m
	vj1QtsqyEH7W0RXiy5OdYtKygQ+aXDVf4xTrlKsEoSynWV4kJQfYG6osqCg702lZn8iN9Gysi3mir
	d8bFjHog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6dy-00000003Vx2-1Lb2;
	Mon, 15 Dec 2025 11:21:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6dv-00000003Vwe-1KVr
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:21:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6dt-0004q0-IV; Mon, 15 Dec 2025 12:21:29 +0100
Message-ID: <aeec9756-7475-4197-8540-a36c9155e95b@pengutronix.de>
Date: Mon, 15 Dec 2025 12:21:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-4-62ae16698cff@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-4-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_032131_364542_6A95D668 
X-CRM114-Status: GOOD (  13.59  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/13] commands: add mknod command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/9/25 1:51 PM, Sascha Hauer wrote:
> Add a mknod command. This is intended for testing/debugging purposes as
> normally device special nodes are created automatically in devfs.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Single nitpick below:

> +static int do_mknod(int argc, char *argv[])
> +{
> +	const char *filename, *cdevname;
> +	umode_t mode;
> +
> +	if (argc < 4)

argc != 4 to reduce misuse.

> +		return COMMAND_ERROR_USAGE;
> +
> +	filename = argv[1];
> +	if (!strcmp(argv[2], "b"))
> +		mode = S_IFBLK;
> +	else if (!strcmp(argv[2], "c"))
> +		mode = S_IFCHR;
> +	else
> +		return COMMAND_ERROR_USAGE;
> +
> +	cdevname = argv[3];
> +
> +	return mknod(filename, mode, cdevname);
> +}
> +
> +BAREBOX_CMD_HELP_START(mknod)
> +BAREBOX_CMD_HELP_TEXT("make a device special node.")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("usage: mknod <name> c|b <cdevname>")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("Create a device special node named <name> directing")
> +BAREBOX_CMD_HELP_TEXT("to cdev <cdevname>. This can either be a block (b) or")
> +BAREBOX_CMD_HELP_TEXT("character (c) device.")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(mknod)
> +        .cmd            = do_mknod,
> +        BAREBOX_CMD_DESC("make device nodes")
> +        BAREBOX_CMD_OPTS("NAME TYPE CDEVNAME")
> +        BAREBOX_CMD_GROUP(CMD_GRP_FILE)
> +        BAREBOX_CMD_HELP(cmd_mknod_help)
> +BAREBOX_CMD_END
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



