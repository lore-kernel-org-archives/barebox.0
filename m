Delivery-date: Mon, 11 Mar 2024 22:40:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjnNl-001Wyf-1H
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 22:40:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjnNk-0000pq-T6
	for lore@pengutronix.de; Mon, 11 Mar 2024 22:40:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VlPGD/Nhzrxx2Z/l7OVeqw/o/GsAMYLQ1I+DeFMmEAY=; b=NGxGcMonPCg5iu
	z5cY0Oc6jJ4m0AEC579NoUCPsS6Qz3El2F1zWiZWUKcOefsrtuKIPFzBot8dJBBqUws+qWDeEJNDT
	ytr/ISEXNaWcTSg6eidnML6rW2NZJJN5/WFC2bXEAyLUXLWYB0/nTCVesc29RdjWxbH8f0QUwelju
	H9i8I7MaGYzfniqswCHk9BJgbljKbPhgozQOpa8pBWDZ253Mxztgp43TQA4tGlqcZQ2674fPjXZy7
	bBW5tqOez/BGgfWYylLiZbpEwKHPNCJWscuGdqS66/6575l0fLM9pbZZZmlgTNu5odtWGIB4G4yue
	3fOwCdnzHmTI8F5JJR2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjnN4-00000003Hrh-3XDJ;
	Mon, 11 Mar 2024 21:39:46 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjnMv-00000003Hoe-1WVx
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 21:39:45 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2d3fb16f1a9so59143031fa.0
        for <barebox@lists.infradead.org>; Mon, 11 Mar 2024 14:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710193170; x=1710797970; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VlPGD/Nhzrxx2Z/l7OVeqw/o/GsAMYLQ1I+DeFMmEAY=;
        b=gSYKOlhIux/wuDWtTFN8HhEBYdNJ2wb5DWoZ9UNLwffRSzo5HbtINlkD2517TF7YVH
         XyXbkOmkFDKR4jxqvqMddIrFP2kw2VoGk+tkuxZLvoUxT4KRPe3VikYt5e3yLShzaKe2
         CGyrzgTJtN3UGGllT/2S7pVqqAyhPY2O1/3gL/Fl2v/mA32r/g1Siaeko361F8x4v7NF
         OWF/N88I5JMdktExv7XyyFGJI8Zg4YVLCrX+sDdBtqpqNHDaa0I5bFhJK6qRQQMo32A6
         PMd8f+WexurCdQoe8zP01HTJAc0iGU6LC/HCL2Hz+4P94eH8/HQXZfxpYkATsiIWbXS5
         DHjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710193170; x=1710797970;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VlPGD/Nhzrxx2Z/l7OVeqw/o/GsAMYLQ1I+DeFMmEAY=;
        b=qxbVkwN0AiwQ++O+k7U/FnHmtjDY9rVcN6WnfVkdK6EQJgbbQl1vv34cbJkZuU97yi
         gJ0nEjXk1wdZwZ2wb29wBuMaE7BFvOovvIOuWoysgj8YRdw0wroXOEiiarRK9eGgzEOS
         lYioqHQbNxjNTNTyhemCTCFjJM8OUkfNtRDZ7cFPI71jU2KuzqPEx6F3ET5P6VzN3qLE
         7UWll+0OuJQejAEccoMbNeGHu2XqHPGVjC6pq7NoIsAjjddw/QCzEjqlPKbEsesItIa9
         rTCeW7klUh7xjg4iKAwtosdQO+jWLDOii+F1tFGi7dhcPpL6Sp1UX7na0s/NkNmHhSWO
         K+Lg==
X-Gm-Message-State: AOJu0Ywr3dDUm80TeAwa797DyDA6C4HU3IZFKwkDOTkRRgIa/8939ehT
	nOzrJWAJJRdcWBUWJzQeXIs8xyKBT8Wh1f8mLCMc///2zx9rZ2RnoaIQZ4B9m7LANQ==
X-Google-Smtp-Source: AGHT+IGTRA4FSLM4elpiPAbFQvxSVOzw/GLJCkJXUuSxCAWH30jTcbJWf13OWbtVwQPfo2FWIT1NQA==
X-Received: by 2002:a19:2d0b:0:b0:513:a9fa:dd5e with SMTP id k11-20020a192d0b000000b00513a9fadd5emr1351611lfj.14.1710193170041;
        Mon, 11 Mar 2024 14:39:30 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id v15-20020ac25b0f000000b0051302450df3sm1237958lfn.148.2024.03.11.14.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 14:39:27 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 12 Mar 2024 00:36:06 +0300
Message-ID: <20240311213915.584429-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_143942_890115_BD4F3976 
X-CRM114-Status: UNSURE (   6.59  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ddr_spd: extend spd_decode to cover DDR3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This extends the spd_decode command to correctly print out the contents
of the DDR3 SPD EEPROMs in addition to the DDR2 ones.

Denis Orlov (2):
  ddr_spd: add DDR3 Load Reduced module specific data
  ddr_spd: add routine for printing DDR3 SPD contents

 common/ddr_spd.c  | 556 +++++++++++++++++++++++++++++++++++++++++++++-
 include/ddr_spd.h |  34 +++
 2 files changed, 582 insertions(+), 8 deletions(-)

-- 
2.44.0



