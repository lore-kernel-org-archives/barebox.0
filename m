Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x22b.google.com ([2607:f8b0:400d:c0d::22b])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7eMB-0007mZ-1n
 for barebox@lists.infradead.org; Mon, 08 May 2017 08:49:28 +0000
Received: by mail-qt0-x22b.google.com with SMTP id m91so44135881qte.3
 for <barebox@lists.infradead.org>; Mon, 08 May 2017 01:49:06 -0700 (PDT)
MIME-Version: 1.0
From: Josh Beavers <josh.beavers@gmail.com>
Date: Mon, 8 May 2017 04:49:05 -0400
Message-ID: <CAE=AiOPuC_YytvYSQoBnL4DGPypZ7_35zTmMWB5NMcbad2WPcw@mail.gmail.com>
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
Subject: barebox 2017.05 freezes on VirtualBox x86 boot with "BAREBOX JMP"
To: barebox@lists.infradead.org

Greetings,

I am trying to boot barebox on x86.  I have tried barebox 2016.06.0
and 2017.05, both of which produce the same result.  I see the same
thing as this thread from 2016, except the message has now been
upgraded to "BAREBOX JMP":

http://lists.infradead.org/pipermail/barebox/2016-November/028631.html


As far as I can tell by adding a pr_err() call, start_barebox() from
common/startup.c does not get called at all.  Instead, something is
locking up the system between the jump out of boot_hdisk.S and the
startup code.  I am using VirtualBox as a generic 64-bit x86 system in
case that matters.

Any suggestions about what to investigate would be appreciated.


Thanks,
-J

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
