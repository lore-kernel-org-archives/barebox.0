Delivery-date: Wed, 21 Apr 2021 19:46:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZGwE-0002Ut-1I
	for lore@lore.pengutronix.de; Wed, 21 Apr 2021 19:46:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZGwD-0003yz-9y
	for lore@pengutronix.de; Wed, 21 Apr 2021 19:46:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RiQqHip51kVCj44T6UEkJ6BqJA4BhAQeOhwBvbyqeFQ=; b=dZAOwxIxrqHrKXwamoDRZ+sme
	NLuujFpwcc56jISyvHu62RT9E6RBU0hR3kSjWHLfa+Mdto70JY4cVE80rNmxcW5yLQhDDvj4Bdz1o
	Bm0bBsoKBZpVxXr2FQvmNxbN0OJcgkRS4iHF8A0gDYMRjuMxkpp/4D/1ZzIDI6ITcimTsRt6927fH
	qO13oE3h/rGLh6Zpi3kzYy1E7jAr4BzqeMB4nYk3W/5v92SB1zMwmZQ/eMWoxc1wjd9QDwS4QDTYE
	UKuPMNRjaXmJs8l5YQLwiiyTDiAPMhPZqdalucRctxiZngx4lIcOdwJp4Jc5l6prCeoqBPBt+9SnG
	EFeEifg5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZGv5-00EuCw-Rc; Wed, 21 Apr 2021 17:45:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZGv0-00EuCV-Av
 for barebox@desiato.infradead.org; Wed, 21 Apr 2021 17:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=AroR83n2jWIVI1w3T1PgkQMS7HYisgKuBaH4OP8w5ZQ=; b=wnlO9Kr3fWbF1PJHByR+5mgzbq
 SOP/rYDMNmLvQTTUCwMXeDBcf7Hzpr2Ezq6Ygn/rgr/FWlqOEVDMPjc8qnJr4NxKPyQl/6xoeZVn4
 LV+vnWZMiwTS5LNcCCU5ao9wa4aUR6Ezl71IvEN6i2YtHA3k7NbqYjF/ZR1vkct2588WC+NSL2kyJ
 1i3cj5+SkA2i7Fjcf7X08asexAxGOp4c097dOY3zx/L1Jz102vkajtU+0gF+0DHOcVIKIhavo0FmX
 N7lOzomRDSjMc1pxLJgQO7EDMXIWDaRSivusKERD6OULYkkkOLLWfdzAwM8wOmjHhxedOirUCnoDf
 rS5+z6gA==;
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZGuw-00D4g2-WE
 for barebox@lists.infradead.org; Wed, 21 Apr 2021 17:45:41 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id ei1so2678222qvb.9
 for <barebox@lists.infradead.org>; Wed, 21 Apr 2021 10:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AroR83n2jWIVI1w3T1PgkQMS7HYisgKuBaH4OP8w5ZQ=;
 b=htjqBRXflVzYp6W+I+Xt7KZOvv3XZj4Y3xEfQYYUjeEMKZ0lOv+b3HHvoR0c/NVqMP
 J5jVg/0rpqXq1UhEMxYd/6BU5uTWUZsq0lCXTbkhkdhc7lPO45Jh4eDbrXey9JO6I/Fu
 tcKg7Ok6uVMmf7dKIxQAqFJ/DaTrZ4wmwpzf1cYSj12Gwc/8wjC8rdJzTJJ2rjQRnMOP
 yyV7EmHcB2NnutfvfUlHzDSnApp8/lr6Rt7yWaP06KxEcAtk+1E2+8/lcSl7Z7EVJG5y
 zQ8GFkprvIm8bpB2eTg8v1QmSKT64n98J/+9k/0YdvIHqcn8wJONCajzcWaksC+C6dZn
 i1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AroR83n2jWIVI1w3T1PgkQMS7HYisgKuBaH4OP8w5ZQ=;
 b=VZwGEGcGWLNXVDhi20XJxQccs1vfexlvYzkWOD8gj8FAfhShPsQgkknl7E5FsnhtOK
 yieDpLPojUmk7i9Qp9EKBjrxt9YF6CJhRb0NmRVlXu+S8Y/gKkCayk0M18lBpdARyugj
 HCJ5q+oZ9Ut40vOK2zx0genGM1Xql8bxyRKfV8oJauBT1A+oM74w2DdDZVWiKc10vG0A
 EzI1MQ3ML6i+yTPZ8n39krZt4SA/Z/lu2GHEdcAV8ER7p7XWiZc7kl430PSu8nQ1AM9P
 8pSM6Bnd9JMVIj9AzW0jWBhnqy46UC3aZsVLoGrUSKgJbxwN7vCPvsAJx6Vx8p01nIoy
 DC6g==
X-Gm-Message-State: AOAM530KTxASo6oXRQbWqdMnYKzJc4cJcOlrvmJo2BSuGtgis2rtmqY0
 wVMSCVS1ePQk7DrHn85cHjOa0MrGSgMi6zFPW5iVTLotDN4=
X-Google-Smtp-Source: ABdhPJyhexMfl7kUUPfZYPtNcDwHgsJMjHedXmLCdrxtjPPsn8pWwJcCk4VVYaDSvBPx3zMyT4kL2cPrJ9dU3vHceXo=
X-Received: by 2002:a0c:b410:: with SMTP id u16mr33485687qve.8.1619027137433; 
 Wed, 21 Apr 2021 10:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <CANi4_RUeUVWkfLgJZxx_eHoJmXLHLwQ7+eF8+yehNV_CwNQ1yQ@mail.gmail.com>
 <001dcf38-fff0-703a-012b-7cfb826d8899@pengutronix.de>
In-Reply-To: <001dcf38-fff0-703a-012b-7cfb826d8899@pengutronix.de>
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Wed, 21 Apr 2021 23:15:25 +0530
Message-ID: <CANi4_RV5d9-FgoJjCebMGn4cjQ_DrqqLs0XdC2wUzn6qFKviHw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_104539_054840_5204BB8F 
X-CRM114-Status: GOOD (  19.10  )
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
Subject: Re: [PATCH] Documentation: sandbox.rst: added dhcp network
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On Wed, Apr 21, 2021 at 5:02 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Please send this as Git patch, i.e. with a commit message. This is most
> easily done, by using git send-email. Write something in the commit message
> that explains the change, e.g.:
>
>   Network configuration on sandbox requires some extra steps on the host
>   OS. Document these.
>
> And don't forget your Signed-off-by. You should also mark the patch as v2
> (pass -v2 to git send-email if you use that).

Thank you for sharing the information. I didn't use git send-email
before but good to know about it.

>
> I am not sure Sphinx likes it when the line is longer than the
> text. Please adjust and while at it you could drop the "for Sandbox"
> part. The whole file (and resulting page) is about sandbox.
>
> s/sanbox/sandbox/. Do you do do these steps while sandbox is running?
> If so, it might be better written as While sandbox is running, ... etc.
>
> > +through dhcp.
> > +Following configuration tested on Ubuntu 20.04 focal LTS
>
> I think you can safely omit this line, but it doesn't hurt.
>
> The rest looks fine.
>
> Cheers,
> Ahmad

I have made the necessary changes as per your suggestions. Sending a
complete patch through git send-email.

Thanks and regards,
Neeraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

