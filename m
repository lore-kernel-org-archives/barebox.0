Delivery-date: Thu, 09 Sep 2021 15:21:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOJzJ-0001IH-VX
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 15:21:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOJzF-0003Jc-CV
	for lore@pengutronix.de; Thu, 09 Sep 2021 15:21:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mj8K2SVXFUfPCquR7NiIy9MvWUz32MPPrv7rJTvGphw=; b=AWj
	nREGnEYeyMoiNuiCumxXmTFSlSlbS4k50c1VuNIxI7bTVS/Lka5L+mIEl5CJ5s5KVaxc2SMoe/FqK
	ANwK1z3pIy93kN5QZAqXzjZydqxV+C3YfUOMYUyClMiGIY+FZZHh0PZmcnjp78OeuR87avT7DLQ8z
	5YoXFEfBznIaX/dPqe7V5kmWFB+gmYy1u5lyIRRr8dQpP0xKw5Eq872U+daZkBdbML1Iq5+RUr+CI
	fhbW7x6XDyndtRB+SlM+WlcXzQNErrjrb2wDlbfvdaf0svjL50IH+E49SpKtXXBAlQGo4YAayDoDY
	J70091T5twfRXNnbgpjKpq0x1lAqJdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOJx6-009nE5-QK; Thu, 09 Sep 2021 13:18:53 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOIhY-009Crg-0P
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 11:58:45 +0000
Received: by mail-io1-xd2a.google.com with SMTP id b7so1905069iob.4
 for <barebox@lists.infradead.org>; Thu, 09 Sep 2021 04:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=23lamoFV9i7NK0qHZKR4pZB0JfP37z6d2H+TN3+lS6U=;
 b=mjNJQaiTqr0+rM8QDEvhiY6YazWDP0dhpChtVeP4vp8KfgUW9funWohKIrBJyEMA0/
 LCgcgjObkqe4QMEdjJCCPe9CL1CmPmZ/9ohgCx+jhsIkDzHOVFw99olr/u3khbI0Hrcd
 w+5/q2xQp9L3UkDANgTYnZJJ7M2DhDLW6HgArcoZ708MyW1amtoY7k8vnOZKVLXnFMSd
 Jrdu1av+gvglFCs26Q0B6Zp/2Mpl3SW1ZYJ20pxhDZ8Kq8RF339n9ej1dK5Qm3Vg7k+O
 oCboZTuT4Wv9yPorNqZGFBP0Jlc2QuFX6bXC6sRt4INdmkEvn5+O3J35XwNkc5jLl1D1
 GK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=23lamoFV9i7NK0qHZKR4pZB0JfP37z6d2H+TN3+lS6U=;
 b=QjYY1iEaHhmtwac/Bun/4Vn2zFzeFPXGK9hjQSiFFVnzHIdaUR8Y0RnTdovfGOz5wk
 zw7g1rxFnaMGgWOwJ3iX82fcJA6QWMUvTgR/HUbsEFjaILP2RpDld2reyrMeNC6APVT+
 6K9xN05JhLbon+lxL0i+a+Y+YsRd3bKWh17d1HVd+oLUb4S82XfMkSTD84rH3nIjzAvr
 BYE6UZWjr5lEFplnArnlzxAm1mg4oPI5gDZQ2kMTnanmfqGRnbjmYzYg59arigdvglYO
 Pc+unf1KRBAdN+RAsyajlk9moavP6J8VkANW+h0I1cLC72qL8YK8MVeJ5sTPdb8JuCKT
 8ICw==
X-Gm-Message-State: AOAM531oCVYD3J2cjOFq091xwk967/b1+RLSf6RFHWhB0bh3rZV5+WKG
 eWPVh2anUiq65IzUNtRphM5nqIK+DbIxN/T2wiy2FsLuofU=
X-Google-Smtp-Source: ABdhPJxkwO/P7c0F6yQtYT6i6J5AR6u7gHPv9yE/aafSDkM9belgKj+sxjuHvUVS/t2vpsMStkqHRIFuDKsNAOhh4Tk=
X-Received: by 2002:a05:6638:14cf:: with SMTP id
 l15mr2474657jak.8.1631188719327; 
 Thu, 09 Sep 2021 04:58:39 -0700 (PDT)
MIME-Version: 1.0
From: Dusan Radic <dusrad@gmail.com>
Date: Thu, 9 Sep 2021 13:58:28 +0200
Message-ID: <CAFe1xey4MRgd8YhKePm-L9SEf2sqefcWieft9GHspvE20TZbZg@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_045844_136305_383955B3 
X-CRM114-Status: UNSURE (   9.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: barebox environment early loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello there,

is there a possibility  to read an environment variable as soon as in
ipufb.c?
To be more accurate, before the frame buffer is initalised I need set
the bus_format manually and the correct value is stored in a non
volatile environment variable.
I have tried the following

const char* value;

value = getenv("nv.dataval");

However the result is always NULL.

If I try the same somewhere in board.c then I get the correct value,
but that ist too late to configure the frame buffer.

Has anyone managed to read the environment early, and if yes how? Do I
have to somehow manually load the environment path?  I have tried this
default_environment_path_set(default_environment_path); but it doesn't
seem to work.

I am using barebox 2017.12.0

Help would be appreciated.
Best regards,
Dule

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

