Delivery-date: Fri, 20 Jun 2025 16:05:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uScMm-009IqL-29
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 16:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uScMm-0004Re-4Z
	for lore@pengutronix.de; Fri, 20 Jun 2025 16:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ChTqTtfCHG4aUeJAwk4dTZZZfH4m2x2n0ZAIvMbVH+Y=; b=f0NSUlTTDFIVCVQhV28g8y+pHk
	+BV5MeeMZLf9xC7WL1CFTj1s3iUHQg2YRk5W1JTbaH6hEuUktc11c2CVvySLD17YuZJ8ZzMR0wvDA
	953P5vb5rRHqqrXlXzPtlxXjHwq4ADA0Y098CDVCAZ8HVmM53E7pPjN7RuEHsplm3PmSq4PRJoocA
	rV4dK9EcEVtxkTZXBsw05YVulKK5GUkYTAMuXeG/2Bk+BHtQ8ZW7VTeq7ZJn67vD5BZa0kYz4X7Ji
	/7qEnEE7QGpmd5tW4xdSiWPTySUTMW9ImIvgQIwXnQzIXAAlpnpmAj/QvU6+vzCGUUHZXkDY21sFn
	u6g2I/lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScMC-0000000FoFq-1HSV;
	Fri, 20 Jun 2025 14:04:40 +0000
Received: from mail-108-mta9.mxroute.com ([136.175.108.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScGS-0000000FnfY-2ySx
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 13:58:45 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta9.mxroute.com (ZoneMTA) with ESMTPSA id 1978da26a370008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 20 Jun 2025 13:58:40 +0000
X-Zone-Loop: f1a1be36000b9300be0a438d8981a03d37ed26df98ba
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=ChTqTtfCHG4aUeJAwk4dTZZZfH4m2x2n0ZAIvMbVH+Y=; b=q
	RNJUwke3jBd4Zzl98/i9ik68lxxT3ST/EGIrtKKqPsl4wgnJQDqu4ydKyTo7zSn++lYqNFi4oh33U
	3rYBTwvi+PjTohvtQ6o2qJluRTmP4e8JVRU243w1692dWgqG9XDz+1a2jETed0Fsi9Ad/umcSdA9Y
	cxpaFu+hQxIUDrKlXoh5KaXaOYSzJSzCKQdd0pGQ7IV0i8VcR6dDl7u5GfFiFlDhL084rz5hVnmg1
	9WZzDwPlr2Lk/ljtpMBQ0/affZAMDXCbbJz0RQoQkAHs54c1Q5IWZeQNXvyT7k8JNef5aUoGMSEf0
	pKxFPcZcZ449yv1vOWpC+PvGKrrh0UJ4w==;
From: bo@mboxify.com
To: barebox@lists.infradead.org
Cc: Bo Sun <bo@mboxify.com>
Date: Fri, 20 Jun 2025 21:58:34 +0800
Message-ID: <20250620135835.87543-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_065844_829037_CFE4DD29 
X-CRM114-Status: UNSURE (   5.37  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/1] Fix documentation for git checkout command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bo Sun <bo@mboxify.com>

This patch fixes a minor error in the Barebox documentation where
the git checkout command uses incorrect remote branch syntax.


Bo Sun (1):
  docs: fix git checkout command for next branch

 Documentation/user/barebox.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.49.0



