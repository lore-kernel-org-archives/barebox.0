Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x236.google.com ([2607:f8b0:4001:c0b::236])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMDOG-0001bh-Bc
 for barebox@lists.infradead.org; Fri, 25 May 2018 14:08:22 +0000
Received: by mail-it0-x236.google.com with SMTP id e20-v6so6986322itc.1
 for <barebox@lists.infradead.org>; Fri, 25 May 2018 07:08:09 -0700 (PDT)
MIME-Version: 1.0
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Fri, 25 May 2018 16:08:07 +0200
Message-ID: <CACvFaDe7o9CL8bTsq7BHXN-erBiakKMCZ6De2vEfst6wPZsxrA@mail.gmail.com>
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
Subject: Trigger fixups of device tree
To: barebox@lists.infradead.org

Hi,

I test last some of_fixup_status. But they had no effect. If I do same
with `of_properties -s ...` it works and do what he should. Is it
possible, that I need trigger the fixups manual before I use bootm?

greets
Pascal

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
