Delivery-date: Tue, 11 May 2021 20:07:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgWnS-0000d3-1A
	for lore@lore.pengutronix.de; Tue, 11 May 2021 20:07:54 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgWnR-0006dy-A1
	for lore@pengutronix.de; Tue, 11 May 2021 20:07:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N0Nmh0tNYb5HlukOFmfj1qq8SCha1v5Tf+EOYw5dCyw=; b=aj6mId01ZxK386TVonjzfQuPi
	1xQ6D15lt8zKm1fyqfGUqOGOy6H/e/YkkfZrYhrfYIIICHb6jcWJGa/rsm6zUL77uDTvihxb75TYS
	eDVq+w8u92vQ12RVQyIjDxp+dKVgxMfPSuwwp1tc+cP+rzB/VSdqVZN9IVNxiPE29w2fUIrX4Nryc
	g0pha+yMeVbGE5ibw3e8hCTs7rFFtAoaL8wA8e63rV52/XIAB0MsvD8iag5epvZZHJQ+yL5zkd9ur
	h8SJKHpWwsnqy+hYe+VwulwwZjYAzbNg3CV77YQlK4abCElcd4YjCil+CchpywwjOHsajC6KHccTf
	/d1jX6ecQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgWmH-000zEJ-JI; Tue, 11 May 2021 18:06:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgWmE-000zEB-2F
 for barebox@desiato.infradead.org; Tue, 11 May 2021 18:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iXiqbrr3Y/n1IG/IEDmcbST434QCyjBfOLneWrGLS3w=; b=aC8deCv4RA2BnQ82IHHGOjgdHT
 AYEEaAqwhWnAvKxiLzRNvYk9RTr1u2ZIExFhnMCcyYxm+nogLLOeqiuH+Wx27CQraTeOK9tFscvYv
 YMwbxfaXriltpN+T/BqWD7O+4AeaJ+sBhZTrHomtWa+X4UjXKLsCvPVn43+46M3ouSjV7/YZd7ebk
 7HRJ+5ULbIyC4/AVfYPIZr2o5UMul+SPaI2j5TyIoNORJyN6+u37vpAPRcMEJIzhxeaSUzmibUirb
 dVkCJzk84Tf1mvECMEjMadtudHaXdSi1cFDmlTJUJMaT8zj+Oxpe3nfPpeCatKmNWyuyYvpwAcPa/
 sEZWoyxA==;
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgWmB-009pNZ-Fy
 for barebox@lists.infradead.org; Tue, 11 May 2021 18:06:36 +0000
Received: by mail-qt1-x82c.google.com with SMTP id t7so15308120qtn.3
 for <barebox@lists.infradead.org>; Tue, 11 May 2021 11:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iXiqbrr3Y/n1IG/IEDmcbST434QCyjBfOLneWrGLS3w=;
 b=Fv2hIzSYa3zhPDn40excK4I9Tvguch/q1scbe3DPeH57jYAVYabOYnMvTW8Z3RwHhL
 SMrzrDcFtFhUObW4nKYRRntAeGLp4/vaEz8e//x3FiQJHOKkqDxR9Ze2Kzn3sypdK54c
 Wd7i6PeCq/aA0FsUuoF8ggtEFcPcAaxBnOZjOAwiToUJU9a+hW/3Xh2H1MZaqQFyLYY2
 g3WdGY814W3TOKod2VpJRMrtIVh8KF0FYBuYM0IYlcXkmpJYZ8bFDDxm1OJZM/jxyxu2
 rxSYwo3bCDPB7EsOAbZh6s80O9NwnBkrge8DvrH2n9D1mrCFay5U3Z5iyPzJnKg1iw+P
 xkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iXiqbrr3Y/n1IG/IEDmcbST434QCyjBfOLneWrGLS3w=;
 b=FxT5rUkJ0tVCV7v/4pwMzR8dkCCKBpTFd/Gn19yvVm+q6Zpd2Q/JaTQqzRcF81oyIt
 3idSE79Xm6ITngq81mzxfcRtlz/EF+8rNGbEgrqhSGiLEqKfvN+7QKSZNS35GurXZ42P
 ZIg6JGx91ZKkDt8baHnilnGq4wGPW0l68VFFXn1ARXk5mu3elZGtAAW0/tiMPiyF9+oK
 4tIWuI3VfnxqXVYpeKq8kT3HAcAijb2MgGj+sSc1fbB34r84Le8YHF72dn1UBAojLCv3
 MjGJtW8bRNv18CANU14r36kJUs0LVgkbwfWzJie68pyaN9hVue1XTS8u7BUgbzHcv2Zu
 D4xQ==
X-Gm-Message-State: AOAM533F0dw5BQ6LvAKagkH5tf2tNl5qg2FG3os4mfahSeIFpf5Klq9h
 zaksa3CVy+GLm8h1Y5egS7Ldrb40AnKvLs5QcZuJorF6l28a6Q==
X-Google-Smtp-Source: ABdhPJx33ML8G2sWZg7bwwSD8pbLNd/kwUkLCkKzf/1ggwwHjhqdOxzMoTCMflcKwDcHl5ZuF/MZKKV27FQaGkpRCJw=
X-Received: by 2002:ac8:1487:: with SMTP id l7mr18442890qtj.60.1620756392516; 
 Tue, 11 May 2021 11:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <CANi4_RUhZuWvG+v9R1Ae5BmCtHx-Bz_4Ay0BiuBYCrqXUAOBiw@mail.gmail.com>
 <20210507084102.GU19819@pengutronix.de>
 <CANi4_RWKvQV68RaZLNBFTJP1z3vObuZYo-HRqfU6r4rL8ZxKoQ@mail.gmail.com>
 <20210511085845.GG19819@pengutronix.de>
In-Reply-To: <20210511085845.GG19819@pengutronix.de>
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Tue, 11 May 2021 23:36:21 +0530
Message-ID: <CANi4_RURqfEKZ311qcDQJ+bD9hdoRfrwb3OKMAGzEoKO2Kyk7A@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_110635_550411_93039FF6 
X-CRM114-Status: GOOD (  16.17  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [BUG] Stack buffer overflow WRITE of size 1 in nfs_start function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 11, 2021 at 2:28 PM Sascha Hauer <sha@pengutronix.de> wrote:
> Ok, so my patch doesn't resolve the whole issue. I just tried the nfs
> command once after a long time now and this really seems to be broken
> in other ways as well. I tend to entirely remove the command instead
> of further trying to fix it. The normal way to handle nfs should be
> to use the NFS filesystem implementation anyway which would be
>
> mount -t nfs $server:/path/to/share /foo
>
> I don't think we have the manpower to maintain two NFS implementations,
> so we shouldn't try to.

Ok, so, it resolves the issue in some way but I think not completely
as it seems that after modifying the strdup return value condition, it
later again got crashed, and, it definitely makes sense and I
completely agree with that as we already have one working
implementation of NFS available so no need to maintain or add the
additional code which provides the similar functionality. So, I also
think that it would be better if we remove any unnecessary code so
that will reduce future issues.

Thanks and regards,
Neeraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

