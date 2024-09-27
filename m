Delivery-date: Fri, 27 Sep 2024 12:43:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RO-003N24-1h
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RD-0005gO-Nk
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D/nzUTQ5UbhstQRbtgsq8lvgO5NagkHiw7ng7QxnaRQ=; b=O00EjX/WpS9W6AfRzIAVC8SNmB
	DuFVe3WYkzuFF+fwhg1XDsCMwEofmhqVvPIEG1eE7v1UY3ufLbSrVpl1X8hNK7QbXtpD8yAJL9bTE
	4wUJEzUl75zAJjCSICGvPSinfZH/Qrgeh+g15gPE0NCEkWC+9uxhITxvxXcvJ9b+LNRDwE4xQfKB8
	GJGVMachDlh8xhtRMzWKzUso9pfs9pnB/tH3jez3ieylKk62lf61Qj/zpRNq/ygdLwwox0+KE/bWc
	4tnLzviOtJ3F0RyAMJT5oBzQIb+HxlTQ/LKcTvlLxgCrlJj4niaEgg1CBo8HvwSSnCjnU5m1sMFf9
	qhVUosaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QI-0000000AqnB-0jcZ;
	Fri, 27 Sep 2024 10:42:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8NY-0000000AqDI-00zQ
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=D/nzUTQ5UbhstQRbtgsq8lvgO5NagkHiw7ng7QxnaRQ=; b=G4vjuQfyUaI33nWgeFnuWEv7ox
	j3brBPX91q2jwqV5PPQda0rfvSdFMv04D4K2OiWk0qqj5dheUXv9/KQL4iatEnwEEhaeUstc6KOZJ
	673UlulDfup0990NcwLxPXzhCEmbxAmCLqhamiUtKaUd9nKvvKQSQLrLbJ6o0LkxdqLDy9AfuhZYC
	kNBrbQ3SNdXqHkWLs9caiJBopgae3F4TCCUX8BIBfVYFc9Z5LcULUpaHRTBg4lVRC9ZpFzEuu+VG8
	ZJBYhS5dJy4BB0CSxprBLNePfoYMKJj5Fk+h+1J9LrQAglewHbpVHJ7V5W0+l9vVWRCG8Z3z7lDvx
	be4kMW7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8NU-00000002Kau-1y5q
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:39:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8NU-0003QC-0Y; Fri, 27 Sep 2024 12:39:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8NT-001u3o-KU; Fri, 27 Sep 2024 12:39:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8NU-000PX1-05;
	Fri, 27 Sep 2024 12:39:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
References: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
Message-Id: <172743355158.98118.14838635811250777408.b4-ty@pengutronix.de>
Date: Fri, 27 Sep 2024 12:39:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_113912_747621_F41E763F 
X-CRM114-Status: GOOD (  10.38  )
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
Subject: Re: [PATCH v2 00/10] ARM: add assembler optimized memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Sep 2024 13:17:02 +0200, Sascha Hauer wrote:
> I realized that ARM uses the generic memmove() implementation which is
> rather slow. This series adds the assembler optimized version for ARM.
> The corresponding recent Linux code doesn't fit into barebox anymore, so
> to merge the code the surroundings have to be updated first, hence the
> series is bigger than I like it to be.
> 
> Sascha
> 
> [...]

Applied, thanks!

[01/10] ARM: Use optimized reads[bwl] and writes[bwl] functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=54885f734d50 (link may not be stable)
[02/10] ARM: rename logical shift macros push pull into lspush lspull
        https://git.pengutronix.de/cgit/barebox/commit/?id=46319e748dfc (link may not be stable)
[03/10] ARM: convert all "mov.* pc, reg" to "bx reg" for ARMv6+
        https://git.pengutronix.de/cgit/barebox/commit/?id=e8baf08fca3f (link may not be stable)
[04/10] ARM: update lib1funcs.S from Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=4a876371504b (link may not be stable)
[05/10] ARM: update findbit.S from Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=7131c48f71e0 (link may not be stable)
[06/10] ARM: update io-* from Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=cd6b3d722c19 (link may not be stable)
[07/10] ARM: always assume the unified syntax for assembly code
        https://git.pengutronix.de/cgit/barebox/commit/?id=958c395ef6a8 (link may not be stable)
[08/10] ARM: update memcpy.S and memset.S from Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=a6052c22a4e1 (link may not be stable)
[09/10] lib/string.c: export non optimized memmove as __default_memmove
        https://git.pengutronix.de/cgit/barebox/commit/?id=54568a8ada22 (link may not be stable)
[10/10] ARM: add optimized memmove
        https://git.pengutronix.de/cgit/barebox/commit/?id=95e8f2b2efd1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



