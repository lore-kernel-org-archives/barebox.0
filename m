Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHBk1-0002kg-80
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 17:54:24 +0000
Received: by mail-ot1-x32a.google.com with SMTP id o14so8451154oth.4
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2018 10:54:06 -0700 (PDT)
MIME-Version: 1.0
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Mon, 29 Oct 2018 18:53:55 +0100
Message-ID: <CAEp+FuBh4S3a_yHmzegNCFDXqMDYjhpAMaWwWAE6zpfC9R0ERA@mail.gmail.com>
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
Subject: 
To: barebox@lists.infradead.org

Hello,

     I am working with barebox 2018.04 version. I would like to create
a script file that can be present initially in the new barebox image
and then modified and saved by users.
     What is the best solution?
     Creating a separate partition in NAND and there put a sh file in
the barebox yocto recipe?
     I don't know how to create it from barebox shell and where to
save it so it can pe persistent after reset.

Thanks,
       Mihaita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
