Delivery-date: Tue, 13 Apr 2021 19:09:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWMXV-0008FB-9O
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 19:09:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWMXU-0004Rm-L4
	for lore@pengutronix.de; Tue, 13 Apr 2021 19:09:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=POiZ00AUuPVz4qpFww2M4VEVF96X/YaJMt+0OAfNk9I=; b=ery0Mdh4JfNxXq
	//q1ZXyfpC+EejPd2xq3LuXnzop+yqM3G+QshHsf+qJwU9BKD62ohC/mVdAbBNmzWyJ05mdPv0j2o
	mqpmNowmGJJ5OPAjxboigc5qoH3/l4MMHvd8T6HctVGWS3CmxwaDnRd+lYcw6zHb5S5im13/G5h71
	nU2FOuOQSRN3nFbRZpQnMy6o/0PDRWFxv6KK9SV/trcY4O+7LfdfVueNGdjCRHJu1NaJJl3jHtRDP
	SPXtM0jgHaDZJ2l0BbuC1swZOgD74V6LXQ6rcUW2oMgmLtt8C8pITGqqvRlgnUheuW9elOkpwT4MB
	IJlWkcYhDQPevDOz4b1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWMWA-009uXL-Gd; Tue, 13 Apr 2021 17:08:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWMVt-009uWJ-Ji
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 17:07:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:To:Subject:Message-ID:
 Date:From:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=2FRZ3Vn55W5EHlEL24GFB2XmYIXiRqQEJH0Lb88vho0=; b=dUhduyJo3cbwlomyWHVSR9H2ls
 Pey7LcKNaftQasxs6tMcArrtKQ7hcNay7qTFq79l8IQbVTRmcnlYor4SgehUR1SOy5Ji7ybD+OHMn
 tHpYFk6CNzcVNmvpzIi9pCKJZW+n+WOKK4/qo3u1yUJqYn2DjLo7RJOfjf94c/z+MZIHoyIIfS2R1
 FNXObzcVLMqr5q8gy26to5KUc3wqlDWRJ9y0YbpAI1biwIj+uvfk3VlHoaCfa/feZ48F1UTQ/I/gk
 3SuLOlWgmNXeoSfU+3dGRfghjPqN0l/jOycT1iqn7rRitb6s5Jhm1WwgtocLJg49gUOCJ/eZpup54
 6GOHMgJA==;
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWMVq-007D0N-Vo
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 17:07:44 +0000
Received: by mail-qt1-x82e.google.com with SMTP id z15so5209067qtj.7
 for <barebox@lists.infradead.org>; Tue, 13 Apr 2021 10:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=2FRZ3Vn55W5EHlEL24GFB2XmYIXiRqQEJH0Lb88vho0=;
 b=PR0OT42eGJHGQkq44m85ZXBwLrvQAiCxb2P63te4RerJqad0lx5jFYRs8WY+GpNR2z
 ASFBNRoStl7h+/A5U1pa05ox/mWv3kIPt3Dk0IKpqZ0BvuoBvEvJInII3BhzOT2zNIdy
 /YDwoKvOcJAgDfsO0LOLfemGJuD6RHWqJdpwqWzLvw5pdfAJ6Oinljb2GjkWHquirCrm
 Vh14nJCxDXIoAi+aXtP+jyBDc6SuGME6dT8x4bfzIrjxmCrFNqaBhgoKEW1mxpaa0rIQ
 IxYcPF1H8y+5DaEcLczGAAGP074FLRNvzezhL+Erj5j+S95Qttnuud2f9S25Ppp9p4IA
 tSIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2FRZ3Vn55W5EHlEL24GFB2XmYIXiRqQEJH0Lb88vho0=;
 b=JN2/L9ZJX69Or8A/R/d5OgKBEalLzHAvQzz4r0qjobHrW2nP3sR9tyq4M3/vq4Usl1
 LdlFGguKeTi8E/2tGyGuw1L/crLSLSTRnXT6hHB/RA2qNP+o0SLb2U7HTp9sHSW6IomX
 3xlLEvqPeSwDlPLpewozQZe1dE3W8YCpssAOyCKOyKi5Jbqtzs7KyHA+85BD1El/d+q9
 T2PudB43TvA6r0l3H96o04uvNWCbZhf12J25okHS0rU5H8xtcD8aDzAGpwimDrw/8KMc
 /RmoEs2rMrBYd2OYCOEK1Ph/ztUvDAX54+b2PKXaJF0TruG+GqlxQpYa1jw+kt+btQ0k
 v6rw==
X-Gm-Message-State: AOAM531W6HwWuUtJtWt6qgttXLTEZBXd2ofJAsLKA+Yrb8jIL8o8TYrM
 0TaHpxSYOqWJcN92t2Pz3o4ZvJt2ETAiyJhKyYqtDAB75Wk=
X-Google-Smtp-Source: ABdhPJxp+dxzLfAZmI9zbXVFPh9X0eCeDsFs2xa4xasd7YUslSw6RwY4ADD1aN5XX3lMfbvjS39fN10oxq2G50QvrzM=
X-Received: by 2002:ac8:4e51:: with SMTP id e17mr2365604qtw.386.1618333660503; 
 Tue, 13 Apr 2021 10:07:40 -0700 (PDT)
MIME-Version: 1.0
From: Neeraj Pal <neerajpal09@gmail.com>
Date: Tue, 13 Apr 2021 22:37:29 +0530
Message-ID: <CANi4_RVykfmmyPAcDbBAz2O134kB8d7h0nzPr7H1o92jWBe6Ow@mail.gmail.com>
To: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_100743_064573_2663225D 
X-CRM114-Status: UNSURE (   7.96  )
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
Subject: network configuration setup - dhcp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

I read the readme but not able to configure the barebox DHCP network.
Tried setting up some environment variables like nameserver,
server.ip, etc but not successful.

I have compiled and executed the barebox binary with or without root
(through sudo) on Ubuntu 20.04 focal LTS

I was thinking to configure manually in the sdcard just like uboot
setup then check for the network but still, this work is in progress.

Could someone please point in the correct direction where I just
configure the DHCP and it will automatically load the network?
So, that I can start using NFS.


thanks,
Neeraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

