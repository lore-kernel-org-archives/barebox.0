Delivery-date: Mon, 13 Mar 2023 11:55:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpY-004zx3-TT
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 11:55:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpX-000391-Lx
	for lore@pengutronix.de; Mon, 13 Mar 2023 11:55:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gDo7/6t4n+uCwIrbS0cLZUZ8qsJ8ecT8fZGc5blbg6M=; b=RiAphX0jgL4stS
	+WpVgA8cDDhjXHeRFZRcOQAgoKnOeAroy2xYZi0913mOY40JHnjJHyc4OKzx8Gf5LEup2+vGuql7u
	5dln7YjT3bsS+ywNxAEe2W9TGhNNWV6yVLmL6l9AgjKh7YcQfbsohkY4YFReLPvVmnXZnOwn/yZEh
	NovrwYhSCRFs+vIyPa5LuDylJdVkXp2Ts1qUouIFbpz98blDJWEO/K3fYw4/UlmdZ+e95PXYCpN/W
	/i77+ini8evY2b5CJpJh+87FACIc8QQT/RpMB4GkQUDjw3wFh4C7SpHkVC1nKA45iPEEgXJNWcEwN
	YGvEWWe4k7PiH2t30dUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfo4-005H5i-UJ; Mon, 13 Mar 2023 10:53:33 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfns-005H2K-1t
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 10:53:22 +0000
Received: by mail-lj1-x230.google.com with SMTP id h3so12122913lja.12
        for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 03:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678704796;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gDo7/6t4n+uCwIrbS0cLZUZ8qsJ8ecT8fZGc5blbg6M=;
        b=C4Bzlr2rIinua63RIyczEx15//mccDvHpcvteQ9buOtGqzib0tFB2Q6JUf0SDwttIb
         v2UN+z/VqINLYEJqpZwoIZbuwn1IWyu2UVKL4xCldkAe3IO7gPXNYRzqI+8skilE3mqd
         zhUNNRlJHugdifJkDfx3JG/R4nOrodPsP5tt6eptmBlFKihCQQ3Meih2yqlQYhhRFgcF
         By3mMq7C8fsnjN7ZEeMlKaO9gdvHqi7N8KSKojgQkSjWLpypEtTPic/AO1mZroPf6Ic7
         IqL0IgOBNElXTB7NZBgHpQT+MEX5UH7nFG5IUAjfyo3bxwphRCwnF/kT1MY5l+62LWol
         JtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678704796;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gDo7/6t4n+uCwIrbS0cLZUZ8qsJ8ecT8fZGc5blbg6M=;
        b=0QOHuxJ44xD3FGCgMKNwFeu6dpjHHAJIhXo0QIcsHTVSxSXCBD/1YmdSmwrRXwm0SH
         RyWYIN/JtOruSCKT9BvvY7z0FNNc0A26grroDd5gDRVhzfoaLQfbx4JhS2DOeojTDgp3
         rWaXNYmPlNG8pX/OiQoVCubAgZLZZEsK11jgL9ib9AJtKObVXAdQM9oPl/xiO+eCt/DS
         d1oQSZjBdffUlJl7CicUelVaJ8N7KHnfqSKf5XwBvH9XnEd50D7iy3oGNhDEHwKxX+wz
         ar3eCys5ziz+Jgp8m/XDgivBJi6NQDnZvF2UPvW7sSl+ytqacDcni5OTLX0LsqpGqubv
         Lkbw==
X-Gm-Message-State: AO0yUKW9glRqnQQGix0k0hc8yUuJaFaUay5DKoROjxmKtiZWInwN1sJW
	HNqrWlLffk1YxY2wJiMzLu/bevQBkYyUUCTP
X-Google-Smtp-Source: AK7set9oqmGb70+x3xjBdDoYmrDpJ2Dm2Ssc0gRPaqO0Os+4oPk6MctQUeY2kZAZHQ/C4DZcKPajgQ==
X-Received: by 2002:a2e:9e97:0:b0:295:c3d2:4caa with SMTP id f23-20020a2e9e97000000b00295c3d24caamr9820058ljk.32.1678704795982;
        Mon, 13 Mar 2023 03:53:15 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id 2-20020a05651c008200b002983bdf7d71sm938766ljq.106.2023.03.13.03.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 03:53:14 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 13:53:05 +0300
Message-Id: <20230313105308.3108127-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_035320_244636_626762CE 
X-CRM114-Status: UNSURE (   6.16  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] MIPS: dma-default: fix dma_sync_single_for_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes a few issues with streaming DMA functions, which should make
those work on real hardware. It also improves the code a bit, removing
unnecessary cache flushing in some cases.

Denis Orlov (3):
  dma: use dma/cpu conversions correctly in dma_map/unmap_single
  MIPS: dma-default: use virtual addresses when flushing caches
  MIPS: dma-default: do not flush caches in dma_sync_single_*
    excessively

 arch/mips/lib/dma-default.c | 36 +++++++++++++++++++-----------------
 drivers/dma/map.c           | 10 ++++------
 2 files changed, 23 insertions(+), 23 deletions(-)

-- 
2.30.2



