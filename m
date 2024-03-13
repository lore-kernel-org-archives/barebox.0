Delivery-date: Wed, 13 Mar 2024 07:35:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkICe-0040Gw-1J
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 07:35:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkICd-00063b-Sd
	for lore@pengutronix.de; Wed, 13 Mar 2024 07:35:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=05TPl5CtlZUqP7GErJd+ZlGdtZXFdSQRnikGw41/mao=; b=3TuFxsojA30bBtr7nTqq14gCgg
	mW5v3jCWzJ8rUr7epzKdLtHbb/HF6t+eZQoGpHiRpIg36XmBebJFamC6Y8dazed1o4qjR0KsEkK2/
	IehaSyGsRnWJujgJeLFOuibd1rbnL3b7DLZ2V9x4jSOpuoAzweCeDMzJTlHMYip0krHzLpK79zY0D
	k+k9uzVf3yhJQPGyX5Fdpsjdq1O/1sGqdJtqaalS1xF0Xb1K2Ytgo/0RcuHh6TS2wsDlFNMueoYmI
	fD2ymhgjD2v/1snqV/Lraiak93XIRAm5DFVEJtcU65zWP+JlyFSVxyIi92zoCWIXttgxiL08SEonS
	O2BLXS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkICI-000000094A8-0WR3;
	Wed, 13 Mar 2024 06:34:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkICE-00000009495-2rbS
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 06:34:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkICB-0005pi-UT; Wed, 13 Mar 2024 07:34:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkICB-0063yV-I4; Wed, 13 Mar 2024 07:34:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkICB-0042TD-1b;
	Wed, 13 Mar 2024 07:34:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
In-Reply-To: <20240312100918.604105-1-u.kleine-koenig@pengutronix.de>
References: <20240312100918.604105-1-u.kleine-koenig@pengutronix.de>
Message-Id: <171031167549.962791.14164683050508885200.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 07:34:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_233438_750541_94847DC3 
X-CRM114-Status: UNSURE (   8.53  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: partition: Also add partitions created by addpart
 to the boot dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 12 Mar 2024 11:09:08 +0100, Uwe Kleine-König wrote:
> A partition added interactively using addpart was added in
> of_partition_fixup() before commit aec676b568 ("cdev: record whether
> partition is parsed from OF").
> 
> Restore that behaviour. To do that a new flag DEVFS_PARTITION_FOR_FIXUP
> is created that behaves very similar what DEVFS_PARTITION_FROM_OF did
> before. The only difference is that addpart makes use of it (and that
> stat uses a different string to describe it).
> 
> [...]

Applied, thanks!

[1/1] of: partition: Also add partitions created by addpart to the boot dtb
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6589670eb73 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



