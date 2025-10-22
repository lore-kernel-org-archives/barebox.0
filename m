Delivery-date: Wed, 22 Oct 2025 12:48:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWOi-00Aa0L-0u
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:48:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWOh-0003jb-PC
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:48:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OhJo3wDupZQ9sLa59t2jDz6K95QOBRdkKoiSjp+a/xM=; b=McW8k20iKqN8J7/9uj73Lnzs+o
	Fq9GvGjMA2R7gw81Z0btMu1XRGM9jzYCBuIU6hT+rclTDCwTvf5t++2bGg3tFyQOzREwA4ShPM155
	/n2ICuOfl9ZUskWQK0ey32DTvZZlFpVgUisp0+oyvuYglRYmUmskT3jSrKNVCUNEggJ2Oc8RiYRSg
	XRtqrlLcfLCI7Smn+5JG75TIeaEr6KUfwyTB52Yw4l5MV/Jw2Rd7hbZrqFYES+LmvZmmnh0UOOpPE
	zi30f3hYcoJyeaYeXFgpC/mdjVYYdR/SsOcKcepJnPv9w5+7zFIaem8jiwc/0nx3m5L+ZJq4IQ4nH
	EhqMqL6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWOL-00000002X9D-04pV;
	Wed, 22 Oct 2025 10:48:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWOI-00000002X8O-1jxg
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 10:48:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBWOG-0003cX-PZ; Wed, 22 Oct 2025 12:48:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBWOG-004sPh-1u;
	Wed, 22 Oct 2025 12:48:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBWOG-00000006BqO-2FFB;
	Wed, 22 Oct 2025 12:48:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251022104509.845994-1-a.fatoum@pengutronix.de>
References: <20251022104509.845994-1-a.fatoum@pengutronix.de>
Message-Id: <176113010453.1475357.6473584314516680694.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 12:48:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_034826_457272_BACDC3C3 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ci: container: downgrade LLVM to v20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 22 Oct 2025 12:45:08 +0200, Ahmad Fatoum wrote:
> It's currently not possible to build LLVM v21 in our Trixie container:
> 
>   Some packages could not be installed. This may mean that you have
>   requested an impossible situation or if you are using the unstable
>   distribution that some required packages have not yet been created
>   or been moved out of Incoming.
>   The following information may help to resolve the situation:
> 
> [...]

Applied, thanks!

[1/1] ci: container: downgrade LLVM to v20
      https://git.pengutronix.de/cgit/barebox/commit/?id=305c0a1ed064 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



