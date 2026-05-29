Delivery-date: Fri, 29 May 2026 07:38:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSpva-0005Eg-0O
	for lore@lore.pengutronix.de;
	Fri, 29 May 2026 07:38:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSpvZ-00056x-HL
	for lore@pengutronix.de; Fri, 29 May 2026 07:38:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OKxqgveaP2j/rN0Fky79aFyC/lUeH+E4+7vO5LPZXDc=; b=X75l3IVdQAYoUh4StFM/yyQ4qk
	nsAQNqZST+HqAGbl1U+dEjab6hHAuu2o2P9/WGuCyzObfI5ywJ2eRza9UEA7GjiqfcCVY9SHBCSBC
	xbf/kEvYsuCo4QUN0BQGkZV1YeqXRJz7EHcuUpi1wT9HsJjPKPkONjQP6CKFtjdKuBPT217FooTJu
	ymwRnV7Nkdwj0T7CXNOZB0l3b1yq4cP2tOUEPM7lKiRsU4WpUDFocUEcqhS96gFb8If8lNhQ0ARF4
	SN9Uqd9jRGcgTAqmcIpBHrZEMnML762A03+ITfSx34xPO3m7wEC/4R5qgWAjEqfiqJdfDTy6hWYt1
	DMau17vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSpuW-00000006lfE-1dhr;
	Fri, 29 May 2026 05:37:32 +0000
Received: from mail-dl1-x122e.google.com ([2607:f8b0:4864:20::122e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSpuU-00000006lec-0H6q
	for barebox@lists.infradead.org;
	Fri, 29 May 2026 05:37:31 +0000
Received: by mail-dl1-x122e.google.com with SMTP id a92af1059eb24-132830d8281so1175697c88.1
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 22:37:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780033049; cv=none;
        d=google.com; s=arc-20240605;
        b=Nl89OxJVQvbUNGIAj8qmdignf6dhhi7M22QfHeiBIAzhGX98dc+QLdexuZSrr++vhq
         j5XYGN6quhU0Be/ypxBon1tnBEMuv3Jk0FTPGTgSnmPEDLie5RKjggLnghBa8KPvhHV1
         Eg57VwsT7CC0D2wVHFxqOsfs8CoYYgtrORl7kFKZG8g+IVmbIFcOTe3EoXSKMVJxuTGO
         jI/ThtpaPx6HMpfHOwWT0XEw5q4/I0I0wN2Ph2zWmx+fS0xyKR10tUnDscjLxizSDWgI
         OBel0FpGBQeLxpTxROnxnFMFOaG3E5IHO+dKphXb1WwQd5RfF1Lo0F5WZaxJg/Dv6jVJ
         nPiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=OKxqgveaP2j/rN0Fky79aFyC/lUeH+E4+7vO5LPZXDc=;
        fh=VPA67by2PzCStSjJZ4qipiywkvFSSPaFMdLQgUNzQBQ=;
        b=FCrYDLph3o67kBL3y8Zt8K6DPvmDXTlf2OXqtMmbiExjxvs2thaZOh4HiEKuGMmZYX
         O+V9wStZLfwVGvhrUX8Q5/LufRDoSmgHG+bCVNLXcDLMyAaHE17nhYV5D0W9kSEQHuNR
         8TKGYDCrKNS827MwtoGGV5+yWh5C/d8BDMWGROJ9jBxALbSIZxgTg/TE8pOr7j9/057c
         aTVX4tEZ3FBahceAR5Dq4489Gsr3x7+gbV2rwfWEHHKBYm4wC40vkT7Yh62HvHtkzL6o
         1vr87pDAqZrPGZFngiKkKu40qGA7Hj5lVb9jBU6XfN8q0Qpj3GJmym54F01bLeqMgN5r
         MjWA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780033049; x=1780637849; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OKxqgveaP2j/rN0Fky79aFyC/lUeH+E4+7vO5LPZXDc=;
        b=WsYtpM7hVoUpVVdmyLAz92wfJCkSFZWHbodSHXjhuQeKkSNsDSCiznNOQD461Qo2po
         39swzsM+Osj/pvzqJFvmFzvJSLGjbOzFaELjTMwtWyoiXUAws0J3aKvk+hQ8Bo9cJB+o
         xeCMF72nMkR7xGHMZ2fTowvsJflgqxJwJ68xE8cCt2lzRWY0JXN+pPLnpIPIH5ue76IX
         R4NwXTGke53c/LEmLvgSkfnZfmjvjUEQtn8BJYcRwb1DHT5zQywLS9t/SS90CCqIPxxE
         aOa1pm7XLqJnwBqRGziJ+/jmel1E5/ZATL4lNNmS6T8PXTcmx44o8y8wA2eqjmXiMqPX
         eUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780033049; x=1780637849;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OKxqgveaP2j/rN0Fky79aFyC/lUeH+E4+7vO5LPZXDc=;
        b=A7Juj8z8rQzoH7/qa4C1kvCEmD4hkHp53d+3wtR3FiRZsYSpZjj418oQixL6z53AvO
         xGS1PreutbTqkM2HbwueusX+uR5fNkFfuXX0LZv1TMHONoUEjqlMTTciX2+q6Tx1p9O8
         DrG3vufgw1PBA+b73PyY/mZO3fZMIh865s2PEMum0r5nvRmpSS26AD15TnIvPsv+NeXh
         epQFbjV+PTMYM245oqF2q1GZ6Q5p8vD80ixRqrdwqYFQ1Xkiacxw4767J1giyzA8GZBj
         hfXLEtDPrpV4fPrCDtLLFpzBnsQZksyqc76MtC73si4cNy1oZZTcmtMglXeQP5nAnE13
         TCqQ==
X-Gm-Message-State: AOJu0YwJVbgkmnbuBteaakCWD+Rv4A2NEJMmPHLYUM1JTHeTAff0BD7H
	ZjM928UYgh2jTOBIcmpt6RDJkJ11sRVUu0U2tQ/nKXZM4gaLAHGHqFciyiXUd/mhWpYyoWm3hKO
	DyDcQf/l+cviIWEE43wX9CD2Q/jM7sUIDy+Z3BJ++4w==
X-Gm-Gg: Acq92OFVYAEPXZt4uxe8pJABfWTOTUnZb8a8j7cXEqarOTz2tfUnPDgu8uDk9Se9kMP
	l0PI0UDuwvui12ajV/rVy56r87ZWeXyZKGY9nLBR1Tal5oWNTvbjyrPXskXJnejmZq52IVNkw1I
	fzcXSRviVn/BcPPjBJRR4uzeFBpogx3P03i2KgFKV5Iq4IyeNtIk79VVQeGCZ4EQCKGwF/iT2Mg
	AdzBx8knWI/o663t45l5RHWKQ63y9TiVOt+tCjk4LGpNBONlawHzvwchSXf1e6EVxGdJ0kxOtL2
	jdHOcPunQ57zsxqzMR8Ui4xckmw=
X-Received: by 2002:a05:7022:688e:b0:136:9ebf:3c04 with SMTP id
 a92af1059eb24-137aedd5efdmr609104c88.25.1780033049138; Thu, 28 May 2026
 22:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260529051347.1373331-1-eagle.alexander923@gmail.com> <20260529051347.1373331-2-eagle.alexander923@gmail.com>
In-Reply-To: <20260529051347.1373331-2-eagle.alexander923@gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 29 May 2026 08:37:17 +0300
X-Gm-Features: AVHnY4Jt_9wRjD1um7t5M1SItXpi4P4BttPWZGGgHi7xlAVhFfWLMkm3TcEp20g
Message-ID: <CAP1tNvTo_YvM4ywoCLCE4A64YYfZmDEBoTC6H-zvnw995sF_Tg@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_223730_106788_709E6E4A 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 2/2] Documentation: add extlinux.conf support description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 7bbb79ecdf..d74cc934aa 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
...
> +When booting an extlinux entry, barebox strips any ``root=`` parameter from the
> +``APPEND`` line **only if** the global variable ``global.bootm.appendroot`` is
> +set to true. After stripping, barebox injects the correct ``root=`` based on
> +the boot device (similar to the ``linux-appendroot`` feature in blspec). This
> +makes the same root filesystem image usable across different storage media.
...

This block needs to be removed if the patch is applied.
I copied and pasted it by mistake.


