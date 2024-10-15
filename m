Delivery-date: Tue, 15 Oct 2024 09:11:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0biR-004ZP5-2y
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:11:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0biR-0002hE-Ar
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:11:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+P42MHGxh6ABtm3A2JGe4Whg4uBRHTy2e5WsjhqSq7E=; b=Qc0B9fqM/AK2xoYaURjNVW4/Y+
	5AQkI4OLaZFYV5Xk4sJ9PaW/o7Kz3j8WdCpGyE6CUPr0v/RKM8yaAFMeKhK2ZtIboswj3yjeFc6aM
	XYWFxXHR3WfxjiSlmU0kBlB6DYY+irlYSpRZjO7DInKnLSfY7WrLnQw2gK23Owlzg56zwLaLEGrMp
	T6kRRGaahVGvJU75yU7zyKeQOYa/yRle0Qrs8m+X3UZ5zlhIQp8OQGfeGrrI+cjy1nlQZFHGEVP3/
	NRiu7rf+ORB7D/iJFpyjGrVTvnDP6hvvEGeE1tADY18VT/6qu1ZLUnf2m7ca4v1gA/tj122DfBvaD
	lOzJRngg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bhS-00000007JNr-3kRl;
	Tue, 15 Oct 2024 07:10:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bhP-00000007JNT-10O3
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:10:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bhN-0002dX-Hy; Tue, 15 Oct 2024 09:10:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bhN-001yMt-5a; Tue, 15 Oct 2024 09:10:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0bhN-0060cH-0Q;
	Tue, 15 Oct 2024 09:10:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
Message-Id: <172897622912.1432196.9754934695481714584.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 09:10:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_001031_317399_D4BA398D 
X-CRM114-Status: UNSURE (   8.25  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/12] include: common.h: make it include only headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 13:50:28 +0200, Ahmad Fatoum wrote:
> Symbols exclusively defined in common.h are a problem, because other
> headers that require them will need to include a lot of extra baggage,
> which in the worst case can lead to cyclic dependencies and in every
> case leads to longer compile times.
> 
> This series prepare for removing common.h in other headers by moving
> everything it contains apart from #includes into more fitting existing
> headers that are already being included.
> 
> [...]

Applied, thanks!

[01/12] include: common.h: move barebox startup functions into separate header
        https://git.pengutronix.de/cgit/barebox/commit/?id=e723ea2ed886 (link may not be stable)
[02/12] include: common.h: move ctrlc() functions into stdio.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=0421e3c77def (link may not be stable)
[03/12] include: common.h: move out integer string parsing functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=af51386c2627 (link may not be stable)
[04/12] include: common.h: move out endianness macro sanity check
        https://git.pengutronix.de/cgit/barebox/commit/?id=2a8222c22c2d (link may not be stable)
[05/12] include: common.h: move out user interface functions into stdio.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=b3c618880ed5 (link may not be stable)
[06/12] include: common.h: move out memory option parsing prototypes
        https://git.pengutronix.de/cgit/barebox/commit/?id=7fa8ca6a4094 (link may not be stable)
[07/12] include: common.h: move out RW_BUF_SIZE definition
        https://git.pengutronix.de/cgit/barebox/commit/?id=1b33d75d4b07 (link may not be stable)
[08/12] commands: add macro to simplify defining one shot commands
        (no commit info)
[09/12] commands: reginfo: make command mpc5xxx-specific
        (no commit info)
[10/12] include: common.h: move out get_ram_size
        (no commit info)
[11/12] include: align: reword STACK_ALIGN_ARRAY macro parameter for clarity
        (no commit info)
[12/12] ARM: bcm283x: remove common.h include in mbox.h
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



