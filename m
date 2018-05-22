Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x235.google.com ([2607:f8b0:4001:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL7Ly-0004bi-On
 for barebox@lists.infradead.org; Tue, 22 May 2018 13:29:32 +0000
Received: by mail-io0-x235.google.com with SMTP id g14-v6so18448466ioc.7
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 06:29:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACvFaDfa+Od__ZcB=hcFBzJ3eqRv1ZAnwG4-EjVGHsaq3zmnEw@mail.gmail.com>
References: <CACvFaDfqmKOB20kdH=XeGRQv4e5spqCegjmaphsLhCOK_ZDSVA@mail.gmail.com>
 <20180522081637.b2mm4raotn5ggqsb@pengutronix.de>
 <CACvFaDfa+Od__ZcB=hcFBzJ3eqRv1ZAnwG4-EjVGHsaq3zmnEw@mail.gmail.com>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Tue, 22 May 2018 15:29:13 +0200
Message-ID: <CACvFaDdQXFGV6Qmqk3_H_UebDvzzc_+uEq=v5zyCk-mKL7Oktg@mail.gmail.com>
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
Subject: Fwd: RaspberryPi 1/2(/3)
To: barebox@lists.infradead.org

Hi Roland

Roland Hieber <r.hieber@pengutronix.de> schrieb am Di., 22. Mai 2018, 10:16:
>
>
> Which version of the RPi firmware are you using? I wrote that section
> while using the git tag 1.20171029, maybe they changed something
> again...

I use the latest one. I was not sure if the 20170129 is workable on a RPi3+

Anyway I try this version to release a beta, if they will work.

>
> What you can try to do is enable "low level debug messages" make
> menuconfig under "Debugging",  and try to set the log level to something
> higher and see if you get any output. I think you also need to set
> "System Type" -> "Lowlevel debug UART" to the model you're using.

Perfect. I will debug it on new Firmware and maybe I can fix this and
make it runable on a RPi3+ too. They use same kind of CPU but need a
other DTS.

I'm happy if I can help on this amazing project.

Best regards
Pascal

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
