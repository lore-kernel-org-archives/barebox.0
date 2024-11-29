Delivery-date: Fri, 29 Nov 2024 13:02:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzi5-001qQD-1T
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 13:02:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzi5-00020t-08
	for lore@pengutronix.de; Fri, 29 Nov 2024 13:02:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6dQwtfib8h7QyCelKbWMGZ5S/Nb6M2Nos3tNjYYv8Hg=; b=iZo+g+Ekh8pzT3cPkFzo89YOiA
	UhgtBQXNidG29atm6QPCi/aInm/usMYKUk5svF2fRn5Db8h7v6G6BEuc8w7ezm/gwHcsWnZn3DaZm
	4LhicBVdE8hCtNgdvGbHvTECk45wdZOvhthIkBmRfHnLABcnTmc6KbtODRN2z5qiwBE3m3n3sR3f9
	MHl235TdvD6eUvjeWvnr3uHxoeBFccP+kSEoQaoxqpp+zGlE/Fs4B5WON9iwLgKOM5/33qcbvipEE
	z9bNOKng7djk76LZUcYO8SXr1LZa/H1pkOh249WAQgVAw/U2SN/w41gxDyFTcyb2JNSpIJbJOWF2d
	zBdBOrQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhV-000000001aX-3w2k;
	Fri, 29 Nov 2024 12:02:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhR-000000001Um-1oKN
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 12:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=6dQwtfib8h7QyCelKbWMGZ5S/Nb6M2Nos3tNjYYv8Hg=; b=QDruur6onijKMc8efw4/pjTXrC
	0B9U62OExZ+6V2ha58jY1vjpO18WQUAEhpRSrEiWXZYbin1LQQJiSTJeWD5nhj5lv368ZgDunmlHo
	8JdAjNv9BsWbKTi3qE+dWmXGI1liNZqWjvdx7jBEw5zdTtSPHgEkWkla+RelLXfvvKqiDlo8zhmn6
	EqyPmhpmenRiZzjqrv6RHcfyNsulZXG5JUnNhJu9LysPVPazWgPyZY9h809fCXa41RFTQYKeFbx+m
	gnKbNybiudQ0yBpSOLxZKhwAS1e9OD/J2CJcoLEnYgr1H40rJDz7nDFBXFdul+A8Z4eRIivKUas/z
	Um5FTxEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhO-00000001jZc-26SE
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:02:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhN-0001Py-OW; Fri, 29 Nov 2024 13:02:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhM-000mML-2A;
	Fri, 29 Nov 2024 13:02:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhN-000xYb-1E;
	Fri, 29 Nov 2024 13:02:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241126151407.3620631-1-a.fatoum@pengutronix.de>
References: <20241126151407.3620631-1-a.fatoum@pengutronix.de>
Message-Id: <173288173337.228884.6605932777734741078.b4-ty@pengutronix.de>
Date: Fri, 29 Nov 2024 13:02:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_120214_660974_E00766E8 
X-CRM114-Status: UNSURE (   7.70  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: implement read_fd and pread_full for tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 Nov 2024 16:14:07 +0100, Ahmad Fatoum wrote:
> This will be useful for host/target tools that use stdin as
> a fall back to read from when no file name is supplied.
> 
> Code is taken from the barebox version in lib/libfile.c.
> 
> 

Applied, thanks!

[1/1] scripts: implement read_fd and pread_full for tools
      https://git.pengutronix.de/cgit/barebox/commit/?id=5171f4d0696f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



