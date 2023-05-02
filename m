Delivery-date: Tue, 02 May 2023 11:18:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm9P-002Ajg-Bs
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:18:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm9N-0002yR-9Z
	for lore@pengutronix.de; Tue, 02 May 2023 11:18:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M6ql/abArvLZyLoq7sien8bYUkHLa10cCSG4NFD/DI0=; b=k4upiDQ9u6WykkvnLayTEFFxCr
	YwDIlAvL7LrIPbJ037Fbyju/15kZcL75jbDggvt3vM3OxLAStEpCLt6dnz+qw5PNIvnFW7CHrjBzp
	x4PDn23SQ2GjeIbHWu0CYGgLp+apBnxxWZQOmpn4ExjOrwzkAUAV33aH8xKzl5TLtH994bHkSR0vE
	nF2S09R6kVC34eybb+DVVp3NZvoup3VisSaJENV4OvpLqh+S1YBhoTcndpH8MEKhKrPkHG5gbE6ws
	qFza3L3BhPab6AOrCIk+6zPNRv1STAp18z4sxkVbA3Ct1Qz/G6JGC4drMogWoGytW5fHjweU7MiEW
	rULPRXpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm8T-000kc8-2g;
	Tue, 02 May 2023 09:17:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm8Q-000kaB-04
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:17:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm8O-0002pQ-L7; Tue, 02 May 2023 11:17:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm8N-0006hb-RL; Tue, 02 May 2023 11:17:19 +0200
Date: Tue, 2 May 2023 11:17:19 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230502091719.GU13543@pengutronix.de>
References: <20230424115548.114858-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230424115548.114858-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021722_075414_42AEFBA6 
X-CRM114-Status: GOOD (  20.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] test: self: printf: compile test with
 -Wno-format-security
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 24, 2023 at 01:55:47PM +0200, Ahmad Fatoum wrote:
> For testing purposes, the test code uses a variable for the format
> string at places, which -Wformat-security doesn't like.
> 
> The printf test was copied over from the kernel, which sets
> -Wno-format-security globally. This may not be needed for barebox yet,
> but let's set at least for this one file.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  test/self/Makefile | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/test/self/Makefile b/test/self/Makefile
> index d55d9133be23..98ebd1fd66c1 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -3,6 +3,7 @@
>  obj-$(CONFIG_SELFTEST) += core.o
>  obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
>  obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
> +CFLAGS_printf.o += -Wno-format-security
>  obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
>  obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
>  obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
> -- 
> 2.38.4
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


