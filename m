Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x22f.google.com ([2607:f8b0:400d:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSgoF-00043q-Km
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 05:55:32 +0000
Received: by mail-qc0-f175.google.com with SMTP id e16so2043175qcx.34
 for <barebox@lists.infradead.org>; Tue, 25 Mar 2014 22:55:08 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 26 Mar 2014 11:25:07 +0530
Message-ID: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
From: Ashutosh Singh <embedded.ashu@gmail.com>
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
Subject: Can i access the barebox env from linux
To: barebox@lists.infradead.org

Dear All,

Can i access the barebox env from linux.
Once the kernel boot if i want to create a directory and store some parameter
in default barebox /env folder without going to barebox from kernel.
For Eg.
I booted the board i get the linux promt and depending on some condition
i want to update the barebox env and create a directory in /env so the
next time
when barebox is loading the kernel image it can check that directory
and according
to that it can select the kernel from any source such as mmc, nand, nor, tftp.

What i observe that after the kernel boot i can see the barebox.env is
mounted as mtdblock5 (case of Nand)
now according to my understanding can i mount this partition modify
with my custom directory
and again boot so that this directory is available in barebox /env .

Thanks
Ashu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
