Delivery-date: Tue, 27 Jan 2026 08:34:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdad-005ov7-1E
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:34:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdac-0002ZO-DS
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:34:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkaavQXTQ5gFsCkESSOLn9EsClvhYhcSUwpP8ankVd4=; b=xAORLIFEDoZEgT97nM9LHshZEx
	0/TI6b6NMk22Y0OrBQI1pELWlnxNb73fTtDW+1u15q3itBp0uwcv7ffy34/chBm5qjBmZHd5SJVvR
	bahS1ahujxbIgL8retHkErXPwWp+EK5XaUnCm5GspenHxykn2lZfZyrKrBef24p6fjGYxfbUg8yHH
	uBATlJ3GnU03fX+O5PWcMdXzCSoIMg9H9/exJbCtzjAJD42ohQ0bcwh/Eq2bygmf/TjUIYUtN7PIg
	vITp6qRHQD5h5kaL2NWGMetagaEsmq1PPwCQoBkigPuJnC/Uykbp3mdFrdRXslj/ulL9CB8L3ArHD
	ThvOP4+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkda9-0000000DmhG-0P2P;
	Tue, 27 Jan 2026 07:33:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkda6-0000000Dmgo-2xnH
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:33:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkda3-0002Ud-3a; Tue, 27 Jan 2026 08:33:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkda3-002iAO-1t;
	Tue, 27 Jan 2026 08:33:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkda3-00000006HHU-1C7K;
	Tue, 27 Jan 2026 08:33:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260126105952.2155950-1-a.fatoum@pengutronix.de>
References: <20260126105952.2155950-1-a.fatoum@pengutronix.de>
Message-Id: <176949922281.1495540.13951059475676496792.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:33:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_233346_771772_F313168D 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: cat: add support for concatenating into file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:59:52 +0100, Ahmad Fatoum wrote:
> For testing initrd concatenation, it would be useful if barebox could
> repeat the operation on the shell and then it can compare it against
> the result, so add cat -o and -a options, like we already got for
> echo.
> 
> 

Applied, thanks!

[1/1] commands: cat: add support for concatenating into file
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f8d817aa34b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



