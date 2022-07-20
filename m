Delivery-date: Wed, 20 Jul 2022 15:33:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9p1-00Fdel-0q
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:33:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9oy-0004VC-FQ
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:33:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O1yD95uj53ZJbyp2GYZo0ZeZS6rzQjXW5PcFnkCQsyI=; b=BNgmALBA+Cwti5
	9PHBsPpjnQneHcgz0ML42UCsteEPhMyRi6PEmxlwQtJw++yBOwNWdEO3Daiw4c2vSHlPPaiR8rMTD
	h6KYzWc/P0DYLkuPJz85SKJn/qrYeosT9WFJs4oQKGPTGt4QMemkeeVhht94jqyEgAY29CB7w6wba
	QtKMNxz+4+CXzN/M1uMi5blCH+QUNiNDislAis8LoLRexVg9oY2ZVN0rckYbyV1OPeKgso4SJR/TL
	DnhWR/om4X2az9xfOF6s94/gqGa88IVRzeBLJlLI2sOJ4p+XcjJCb9NVDwpXb0EjqDIObmoUyZVeT
	dQEAVwKTWaPbL0eK6yOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nI-006489-NG; Wed, 20 Jul 2022 13:31:16 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nC-006463-L2
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:11 +0000
Received: by mail-lf1-x12d.google.com with SMTP id n18so30292896lfq.1
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O1yD95uj53ZJbyp2GYZo0ZeZS6rzQjXW5PcFnkCQsyI=;
        b=jWgfgtmvbO95XSp3MShBYVDaQ9L8dr2CVhXnyWXYShE3CYKXkFxmCZrCQ4ognqRGht
         8vzlGh+USzy2CLgNLCgdDJmqvRH3b8iD0cHxVs1I4CAf32ajWxYgoWTCkl0yz1iXbS+y
         Y+9g9KLtBP9e8aGXQfjqU7Pze9Bvtq7GiYcY4HYtIz056Gg5xRJcvEMbPwB2LfoNClJ/
         fCZDQ1/jPL8vUXXaYnY+s8zSAKEWD8Hz9gVEGeSAcanbrtUh0DPCYXp7D7Rd3ce/S4HQ
         Cfc7LjVwRuwScQAjfM1EalajyCUPfXA4bNC8jMlHl+irYg4ZfUfZypswOHbW7ibWoFi4
         eadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O1yD95uj53ZJbyp2GYZo0ZeZS6rzQjXW5PcFnkCQsyI=;
        b=jTwKPoTkIkVUdql/oTIShOKj4ziBMpRuitrRLdVGUDhA8YzOssBpXYV1bQlRrvG//Y
         am7A8RiqpLF8XzXKt8nRK5UnkGIq8iNYnFruJS6cJLaCfD92H5gPF/i2XrQXM8YF8P9h
         gaCnqeLz0T7E2QpRQ1hHgf8lFIDq/B73iU8o1UOyAv5R2yFUWtwTF0SyeE/B+LglXoSl
         s17BjtXWLm7n0LgsGCRhmj5Xkr1CSD4FTGFl5u/CSiReZKApZZSgU+6+GRJPdjpVaAYI
         ysKOfxyXlDau5Tl0oj4YOqRrpddrdRLWHtstLkbwJgf1WG2NE3yezOtUKZOvRXSox3W4
         M5Mg==
X-Gm-Message-State: AJIora/ruo3rUXFNCmXaIY6iI1CWjzkc5TSDIv9qHvpxzr2CMlUCwSUi
	Oyo0FRO30blwySm+tiQwe+f7vYqFdSS1tFCE
X-Google-Smtp-Source: AGRyM1scZnGCC5JQRTabkG+7hOugV/QhEPWMBg173jUpZnGZOlbN+htVkobcU7iqf5VhLWU90vqfoA==
X-Received: by 2002:a05:6512:2245:b0:489:dc6e:afdd with SMTP id i5-20020a056512224500b00489dc6eafddmr18650408lfu.628.1658323867095;
        Wed, 20 Jul 2022 06:31:07 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:06 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:30:53 +0300
Message-Id: <20220720133100.13580-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063110_726788_65F800FB 
X-CRM114-Status: UNSURE (   6.24  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] e1000 and rtl8169 drivers fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Denis Orlov (7):
  net: e1000: remove superfluous allocation check
  net: e1000: properly read/write MDI registers on 8254x cards
  net: e1000: do not actually acquire/put swfw_sync on 8254x cards
  net: e1000: configure tx/rx and rctl in open() instead of init()
  net: rtl8169: properly map rx/tx buffers for dma
  net: rtl8169: enable pci device bus mastering on ifup
  net: rtl8169: free allocated memory on halt()

 drivers/net/e1000/e1000.h |  3 +++
 drivers/net/e1000/main.c  | 44 +++++++++++++++++++++++++++------
 drivers/net/rtl8169.c     | 51 ++++++++++++++++++++++++++-------------
 3 files changed, 73 insertions(+), 25 deletions(-)

-- 
2.20.1



