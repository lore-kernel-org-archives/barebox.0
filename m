Delivery-date: Thu, 07 May 2026 12:40:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9W-001vxi-1p
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:40:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9S-0001l2-CC
	for lore@pengutronix.de; Thu, 07 May 2026 12:40:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=li3GbOJQNAp1jGUly5GE7ipSlAh8Gilc/HopoKLGzKM=; b=VKXmPRo5TUjkoJmbnEifv7qYd4
	1A2MGI7Hva1YfXXujj/avm8BKg6cRrEjmtjk1UNMGbJIRJj3Fk/5sDVBvb0GRo0P4d/hRqUmO0wOA
	Z7KZ4wtxis0UKRAKi2u1KzymuTSDgjBjKLOHirXUmEINvXG3ezvOUWSnupUKgwvJ63gwJDQQho38I
	zPTBTHnE7I784+637SkfM/AsYOK5jW1w5Qg93lljVb+bckmoqDXcr6VWx+0P7RITymFq05Wi1FnqM
	q9JIiNpmdroJqZbxYemsYjWuDE6S5foinPkr8sLZ8jsaPEys4BPk8U1egyv/AtuMZuuJJkOU99gO+
	U2Au2RuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7v-00000003Vig-235p;
	Thu, 07 May 2026 10:38:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7u-00000003Vhp-07UB
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=li3GbOJQNAp1jGUly5GE7ipSlAh8Gilc/HopoKLGzKM=; b=Cz0QnuLFPJWPuWLzlB3XWNIZwP
	aJcHdyPzHrWRFZF/uZluuVo4YKQNKhHYh+dwEtc00VW4BdZ2ho+vftorlSjmPXKIMVC9bWVRINKa9
	Ig2Rrd9oWXK+H2AaOLCzsB1WI1EBMAS7BWQvKcMG68xNrlzqIEvIsN8i9AQmYo96DlhR+3gVerPdh
	6u3ipiDPV1J5vvdSCsQvDgqqnQSZwGgqxBtsQbkKWUxnUN5DLvjMJdFt3MNw5GZWIQ0xmrW9FQ1Nm
	22aOF4hObAUjrFXnGhxUmHfIQ/THr8jkcWlR0gb6HM/0nY6PfDtX4KYOhfM1XmHyQPfFW4so5p5pb
	17v4rvKQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7o-00000003ENv-0jny
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000T4-BL; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uCz-1w;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-0000000BjIN-469m;
	Thu, 07 May 2026 12:38:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
Message-Id: <177815031197.2795644.9864682840283763410.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113836_604113_6A218BDA 
X-CRM114-Status: UNSURE (   7.86  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] lib: term: fix fbconsole cursor desynchronization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 May 2026 08:53:54 +0200, Ahmad Fatoum wrote:
> term_getsize() was added as a common helper to compute the minimum
> terminal size across all enabled stdout consoles.
> 
> Since then, the EFI loader support added the same functionality again in
> open-coded form.
> 
> Both suffer from the same underlying issue: They emit some control
> characters on all enabled stdout consoles without the regard for the
> individual size and capabilities of the terminals they are connected to.
> 
> [...]

Applied, thanks!

[1/9] lib: term: avoid printing NUL with new new console_puts API
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f61a6fb7991 (link may not be stable)
[2/9] lib: term: return error code from term_getsize()
      https://git.pengutronix.de/cgit/barebox/commit/?id=a81f585e824e (link may not be stable)
[3/9] lib: term: add per-console terminal response parser
      https://git.pengutronix.de/cgit/barebox/commit/?id=920132df3126 (link may not be stable)
[4/9] lib: term: factor out single cdev handling from term_getsize
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea6ccaf8059d (link may not be stable)
[5/9] lib: term: fix term_getsize cursor restore
      https://git.pengutronix.de/cgit/barebox/commit/?id=6be1d3436997 (link may not be stable)
[6/9] console: add get_size callback for direct size reporting
      https://git.pengutronix.de/cgit/barebox/commit/?id=4cd56f6eb2da (link may not be stable)
[7/9] video: fbconsole: implement get_size
      https://git.pengutronix.de/cgit/barebox/commit/?id=96362db024f8 (link may not be stable)
[8/9] console: add per-console terminal.size parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=d88b030c564f (link may not be stable)
[9/9] efi: reimplement query_console_serial using term_getsize
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea66f5fe5ede (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



