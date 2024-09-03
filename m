Delivery-date: Tue, 03 Sep 2024 13:40:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slRtI-000r4n-0w
	for lore@lore.pengutronix.de;
	Tue, 03 Sep 2024 13:40:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slRtG-0007Q5-Fq
	for lore@pengutronix.de; Tue, 03 Sep 2024 13:40:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UzGTFCIWS7BiPRdk4txg5dqVWRaBEiMM4FCSxIKSpJU=; b=E2SD/CjKOdTe9B9c9vuq3iBr6I
	c3nS8uIOgaIW9UpL4aUt1t+8IEGP6BHJr/VdBha2bEkasXi/EKGOkEcd+KWRQJ0eeomhNorN1RcB9
	7X51NGdZpoFt15s3Hrb8mMHsY7X4VRjrbiuTTa/SRdWtc8SO3rkSfEjpu8LDPdfrktNkLrzlHCoAA
	e/EtN0ZTm5giuxtOggbZgbx0LPK2uir7Pjg7a2iqdfXfDe8JZTkfD80qnWEzz8cAiQ1IyyZzEwVLj
	lgCF6yGSKrqunGdKxr2bHD5Obb3PDsdSx7dZrkRWwhCKIK0hJ9gh1TeePZ09h/iETPY3iGOYtBMeq
	A4P5xgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRsp-0000000HZuW-42xz;
	Tue, 03 Sep 2024 11:39:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRsm-0000000HZqw-1mQJ
	for barebox@lists.infradead.org;
	Tue, 03 Sep 2024 11:39:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1slRsl-00076s-7n; Tue, 03 Sep 2024 13:39:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1slRsk-005Bfd-RU; Tue, 03 Sep 2024 13:39:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1slRsk-00EjlL-2Z;
	Tue, 03 Sep 2024 13:39:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Rouven Czerwinski <r.czerwinski@pengutronix.de>
In-Reply-To: <20240903093712.453901-1-r.czerwinski@pengutronix.de>
References: <20240903093712.453901-1-r.czerwinski@pengutronix.de>
Message-Id: <172536357479.3512492.1134136258930191379.b4-ty@pengutronix.de>
Date: Tue, 03 Sep 2024 13:39:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_043936_489970_86FC7B0A 
X-CRM114-Status: UNSURE (   9.06  )
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
Subject: Re: [PATCH] include: linux/iopoll: fix uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Sep 2024 11:37:12 +0200, Rouven Czerwinski wrote:
> In gcc 13.3 there is a warning that start may be used unitialized:
> 
>   include/linux/iopoll.h:42:21: warning: ‘start’ may be used uninitialized [-Wmaybe-uninitialized]
>      42 |                     is_timeout(start, ((timeout_us) * USECOND))) { \
>         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> The warning is bogus since before usage of start !IN_PBL and
> timeout_us != 0 are checked for the case where start is used, but in
> this case it is also always initialized to get_time_ns().
> Initialize it to zero to silence the warning.
> 
> [...]

Applied, thanks!

[1/1] include: linux/iopoll: fix uninitialized warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=7485dad4a06c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



