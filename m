Delivery-date: Tue, 06 Feb 2024 16:05:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXN1H-005pgm-2X
	for lore@lore.pengutronix.de;
	Tue, 06 Feb 2024 16:05:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXN1I-0000Bi-Gz
	for lore@pengutronix.de; Tue, 06 Feb 2024 16:05:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+BS3kKMyNsp1B4Gsl9euST0G4ojEZFK7Ru2574qPwz8=; b=OCa1hsuW2V6mM7epMzzyuibnkK
	Cmm6sOWMoQtrW08LjnbTTtX9WvsL9S5QsMEyQi8qnxGwg8qGJcb5UxEsc53CONUgDsJ4oqoaFD9cJ
	4PEH7IOtmuAwcRtmEyg2cxdIM31COfD1TVyPy8FGuIgWjrHgV1OVIpGz5SoojP4KIbSAqB5YJKyw3
	YmPr1+qQaDPEoPM5fT42PCmkLH57lyYc9HtE3HUBTj0kWQEDl4difYRb1ly9VwsW58LumhzrMpXdm
	BZ1mCmdgEVS+CEQx4cy7P9ZUwdJbMP+6bE4Ctv9S72aAQiE7ppmYTwBjFVNoD/sX4UNXP9+FtOZEu
	cx+gEwYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXN0g-00000007zOX-1ELU;
	Tue, 06 Feb 2024 15:05:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXN0c-00000007zNf-3j6n
	for barebox@lists.infradead.org;
	Tue, 06 Feb 2024 15:05:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXN0b-0008Vi-AQ; Tue, 06 Feb 2024 16:05:13 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXN0a-004qv9-UE; Tue, 06 Feb 2024 16:05:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXN0a-00Bej7-2l;
	Tue, 06 Feb 2024 16:05:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240206094838.1987246-1-s.hauer@pengutronix.de>
References: <20240206094838.1987246-1-s.hauer@pengutronix.de>
Message-Id: <170723191285.2778132.5317723683150865591.b4-ty@pengutronix.de>
Date: Tue, 06 Feb 2024 16:05:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_070514_958454_5C50146B 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH] decompress: change length arguments to long
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 Feb 2024 10:48:38 +0100, Sascha Hauer wrote:
> In order to support decompression of files > 2GiB Linux has changed
> the prototypes of decompression functions from
> 
> int uncompress(unsigned char *inbuf, int len,
> 	       int(*fill)(void*, unsigned int),
> 	       int(*flush)(void*, unsigned int),
> 	       unsigned char *output,
> 	       int *pos,
> 	       void(*error_fn)(char *x));
> 
> [...]

Applied, thanks!

[1/1] decompress: change length arguments to long
      https://git.pengutronix.de/cgit/barebox/commit/?id=19f44baf474d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



