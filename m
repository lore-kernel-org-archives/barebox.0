Delivery-date: Mon, 15 Aug 2022 10:51:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVoj-006EeI-CD
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 10:51:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNVok-0001zl-68
	for lore@pengutronix.de; Mon, 15 Aug 2022 10:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VCt/Yj0uCmu+tF/KBVjyU90iL1VwmC/GCRjexYoT87I=; b=JHeRmx6pYgop25TfzertxwN9Nx
	ZtanCHNdy6x0rxRuP8bY2Ac1N2Tu4u6CGEMEeehOIvei2DkcjKQ4nn5Br9RpZtAfrQU2FjEizrQCK
	d8p3jqjFkv1NNYLn3bTXB9TFHZtSYwY28aN0A2GEVAXs6gHCI3YBFErQPkmhOqD32LTaLxq5dJmVf
	ykGDhHgENi0h4ZaqF76y2+LyV8rAeoRfYV29NFIFq59mxH553HTdGXuYlWvJ8jRFQoykje7KcRFWd
	nrodappPlwlVUXVRs+rBKQ6WF4Y36/w/JySkunsU7/IGRDdrGu98ia//xNkXmjwnjtQed3eJ+gyi0
	R9JBXRtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVmg-00DNWb-HS; Mon, 15 Aug 2022 08:49:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVhF-00DKDt-Ek
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 08:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=VCt/Yj0uCmu+tF/KBVjyU90iL1VwmC/GCRjexYoT87I=; b=dLzuQzoy5HB7XF45veflP5xlXt
	OvOGY7URumVmPAe4iuTaGMdr8u8mYmHuVfJasWWHX2w03XUlHmtGIZ7yAjqkfaxzjCwXAMkOvJIy2
	1LN6+jYedQO4PmDNThbxW1QybAF59b0XxGmUrk9s2Jk6GnOL0GtEqwZ1/nuxpLZpZMcf0Pt2VDKhi
	8WArvtDxfKTDKDX+9ZuzyGNRoxaoi8Bohc36zuMXXVsoxxhp0hdLDgQ+TizJEPfmMTEU0Pqdd9IdT
	PfAWpTIxyh+m1JxB2t0gj0/+A95FbK3JovhT/yDgYbKSEtzJYnb+biK6w035vMNhmZtKSRrAyU3p0
	6Wh6FSuQ==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNVh3-002cwK-L8
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 08:43:34 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27F8glMQ848758
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 15 Aug 2022 10:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660552968;
	bh=VCt/Yj0uCmu+tF/KBVjyU90iL1VwmC/GCRjexYoT87I=; l=438;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=cL+X0vSWV3mmuobxTfXb1ERUQP0EkGBTjVqM/15o/Is0DbZkLcoPvjN6lE+//MfqY
	 ncqLxPhb9WR0yPK3cdKXReKy0siCiKMSbisst921hf8JDyhpXwK/x0fi0dX9Rzar5l
	 qQjwNgLUJ0wBRJ7eXjoiFvfDe+LqQ525P7hsSLAjpbqpx5j0YPFOt/0qPXiFCkxAfb
	 bZEBYtdW8Thj72O/O1d/Bi6GkZgYwf00CRpyinccAFbr6BinNszQ1wJgKp7lgN44je
	 9xIOx1bsY2BeIbesELG2i1Q18dXw+6sGuZyFIH0NnvBLCncCVIBf26RAZUZwLT31Ip
	 LBW9Wn5WfZl8w==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27F8gWma822373
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 15 Aug 2022 10:42:33 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 3FF4A265607; Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27F8gPwd811073
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 15 Aug 2022 10:42:27 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oNVg1-000EIh-Nb;
	Mon, 15 Aug 2022 10:42:25 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 15 Aug 2022 10:42:06 +0200
Message-Id: <628b53c753035bf76ee0c4bc1ae14cfa989eb532.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_094330_353565_FAEB19B9 
X-CRM114-Status: UNSURE (   7.11  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 02/18] libfile:copy_file: show statistics in verbose mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 lib/libfile.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/libfile.c b/lib/libfile.c
index 3b7985fbcabb..9eb06de02945 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -454,6 +454,9 @@ int copy_file(const char *src, const char *dst, int verbose)
 		}
 	}
 
+	if (verbose)
+		close_progress(total);
+
 	ret = 0;
 out:
 	if (verbose)
-- 
2.37.1



