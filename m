Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eVvY7-0003UQ-Fa
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 08:34:25 +0000
Date: Mon, 1 Jan 2018 09:34:07 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180101083407.GA9460@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171231083407.GA16645@ravnborg.org>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Mails lost towards barebox mailing list [Was: [PATCH v4 0/25] at91:
 move ...]
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Good morning - and happy new year!

Something seems fishy here.
Yesterday when trying to send out this patchset my ISP said
[PATCH 01/25] ... was spam and rejected the mail.

So I used an alternative smtp provider (also my POP3 provider).

And tested this towards my work mail - OK.
And when sent to barebox mailing list I got the cc: mails.

But I can see that no mails have reached the Barebox mailing
list for this or the following patch-set.
(Checked the web version) So something is not OK.

I tried again this morning, and mails sent using git send-email
will reach my work mail.
The mails leave my smtp provider, but are lost somewhere
on the way to the barebox mailing list.

Mail header looks like this (mail copied to myself):

From SRS0=M5gI=D3=ravnborg.org=sam@mail01.mxhotel.dk  Sun Dec 31 10:43:50 2017
Return-Path: <SRS0=M5gI=D3=ravnborg.org=sam@mail01.mxhotel.dk>
Delivered-To: unknown
Received: from mail01.mxhotel.dk (91.221.196.236:995) by
        localhost.localdomain with POP3-SSL; 31 Dec 2017 09:43:50 -0000
X-Original-To: sam@ravnborg.org
Delivered-To: sam@ravnborg.org
Received: from jupiter.lan (126.158-248-196.customer.lyse.net [158.248.196.126])
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPA id 74379194B34;
       	Sun, 31 Dec 2017 10:35:41 +0100 (CET)
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Sam Ravnborg <srn@skov.dk>
Cc: Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH 01/25] arm: at91: refactor lowlevel_init selection
Date: Sun, 31 Dec 2017 10:35:11 +0100
Message-Id: <20171231093511.8111-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <20171231083407.GA16645@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
Status: O
Content-Length: 15597
Lines: 478

If you have any hints what to look for, I would be glad to know.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
