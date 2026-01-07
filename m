Delivery-date: Wed, 07 Jan 2026 02:13:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdI7R-0025Ki-2x
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 02:13:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdI7R-0002uq-CR
	for lore@pengutronix.de; Wed, 07 Jan 2026 02:13:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:MIME-Version:Date:
	Message-ID:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e6Kz+/pNNIouDXWrCT8gaeN6l3TJz7Hmrvjbph3AMNo=; b=tHOYfgRYpkpdGt
	m9QnzTC9hmEvEeKEkk1uqoeTewyPFClVytV4W88nww/R63nJqkfWJWhFvbea32DHi8O2aFWf5WGVV
	a2dSBtyYfHwFlCDiv9BKfv4Hwev+n0xsg5Wm1/LAepB0l1j2lk8UngKRA6/EqTnvEHCwOUddqNrkD
	MaEZa54Knso/N1/qWDQmMVSTqnQCZqlIh4bwIHRchU86wk9okJqEHhDyNmdFikD8P4UE0AXOsoqD4
	8TlGo6la7e+Dt7p7JGpVNffZDelEQsRO5n8fnfwyYevhqan9LvMA/UlbOfVQGOZ1Uaeqej6PFOvDJ
	Y4xh06PopTG2tJ21n0BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdI6a-0000000DzmI-0N39;
	Wed, 07 Jan 2026 01:12:56 +0000
Received: from out203-205-221-209.mail.qq.com ([203.205.221.209])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdI6X-0000000Dzlx-0O5B
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 01:12:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1767748366;
	bh=e6Kz+/pNNIouDXWrCT8gaeN6l3TJz7Hmrvjbph3AMNo=;
	h=Date:From:Subject:Reply-To:To;
	b=TqdgNBRlI+ru9D90AvDSaCNThT+gMp+HG/5DzooMVgzj3gXipVrN7BJEaHieotqez
	 746FFVUOmNeTesGuytQROX1Jxxe2ln1YQHhOpR/zzHNOdBulxq/YHqtrspYa9q4H1b
	 lIZrVRrspcAExoYneqNcb4eQHLetbyyaIa0SXKFI=
Received: from [192.168.2.100] ([49.65.73.109])
	by newxmesmtplogicsvrszb43-0.qq.com (NewEsmtp) with SMTP
	id 32D39827; Wed, 07 Jan 2026 09:12:45 +0800
X-QQ-mid: xmsmtpt1767748365te9s2285g
Message-ID: <tencent_C5E0959753A838615BF48C3792E12BC74A08@qq.com>
X-QQ-XMAILINFO: MDbayGdXPuoeW2p9mqnNcvHxImICwysgWbUNDk4IEkcUfr6kqLE2U5RroU7qNg
	 D3fkaevD7omHmhJfFYH80s3vSTrPqZGmq1+GO5jWw3Nh2CPc13qccH/zLykY6WWvRim37osgfpeL
	 z8WJ6Wb+Sl/JCpjaOBm6HADZ0ygdG4ylRqK/3WPRX7fs+wwHovCxPMcPxCSXbA4noTdodW2/W09Q
	 tq4fFebJmimWSkB1XLWr/Cj6Hig2nUuDKDDXiEQzURqcNkE+mXXipNl/iEPXl+DlPG2nTelVYPQ3
	 QOoglt4aGPoo/RzEATIqMJ1AWxqN8dv14ImRUhthFnXVr1SqJA3v9RaUvXVAmEDTyHPdXITYok6L
	 d/QxON1pYNWZZXfHK72eJ4dLYbRMj7TsoWEFz9Re9e0NcULJqQ7DKYtoB8NzXkHR0FiE3vgnIbvH
	 nPAARWgkwLtipQNWXG+2LUYv12z43tLKj4NYOrf1uMlYs2yMW7NomAiOvsndZbm5TQsqxBvPOuOA
	 1zQiDE3wGdiRV1zqTt+UdLZFjW7dsPRdZqkOv0PiOYEP6Hr2GfyDENNMSpfMvlXo0bWkb7jFwooU
	 ekL+Q9wUeNaeMmPG3RhNGqXX4vK82nbMEWdz/XH//pzrm5gK22e6mMqOJ5TM/iU+bLAHon4/8bQY
	 /caNJfmtYXu9TtU8/N/CT/IUo3YGG9vBkiSX5rcL7RpD4PDuwfsBx3v4EjKMYRB6uQ3GP+S67rBu
	 ZrkQgsMxkIUg34CkzeDZVlbnpLzaYCiV8A7FvP2PNJwK90iD2+KXmMkMHT9QO1h8liBEC2KLNHNB
	 SsmVgSJGGYTabpMNvpkJVXuW0PZDKZ2skvmQsJb6k/4VDHYfe7W848kqBEzxC5Ph5pbqUiNPP9xY
	 wq3frxOHWkByvmCHae/byTgl+mrOeKeyltdZQvdDVaLK1FWLkIwarCkB4D/c38kFhsHkylZwWMae
	 q57lDfBzDGArRYmGOtkr1RyZvE0PsG/thF4kjIcF4vvg15+v6TCLXv0cEi4ii+afj6ZqLUOSyPhN
	 +eRvrmDSeXwGmkvHdPzEJktJnIWrR25KdIUNWM10NorTjyKCzDk5LPFaFOURU=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-OQ-MSGID: <13fbb536-e8e7-47b1-91ca-59a8b368f2e5@foxmail.com>
Date: Wed, 7 Jan 2026 09:12:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: zhengxiaojun <zheng.xiaojun@foxmail.com>
To: barebox@lists.infradead.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_171253_462480_18211767 
X-CRM114-Status: UNSURE (   6.69  )
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
Reply-To: zheng.xiaojun@foxmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_MUA_MOZILLA,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH] mmc: resolve conflict between MMC_CAP_NONREMOVABLE and
 MMC_CAP_1_8V_DDR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Resolve conflict between MMC_CAP_NONREMOVABLE and MMC_CAP_1_8V_DDR.

Signed-off-by: zhengxiaojun <zheng.xiaojun at foxmail.com>
---
  include/mci.h | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 3db33f9142..50214aaae7 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -58,7 +58,7 @@
  #define MMC_CAP_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
  #define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
  					 MMC_CAP_1_2V_DDR)
-#define MMC_CAP_NONREMOVABLE	(1 << 8)	/* Nonremovable e.g.eMMC */
+#define MMC_CAP_NONREMOVABLE	(1 << 10)	/* Nonremovable e.g. eMMC */
  #define MMC_CAP_UHS_SDR12	(1 << 16)	/* Host supports UHS SDR12 mode */
  #define MMC_CAP_UHS_SDR25	(1 << 17)	/* Host supports UHS SDR25 mode */
  #define MMC_CAP_UHS_SDR50	(1 << 18)	/* Host supports UHS SDR50 mode */



