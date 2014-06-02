Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22c.google.com ([2607:f8b0:4002:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrPUQ-0005xQ-I3
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 10:29:15 +0000
Received: by mail-yk0-f172.google.com with SMTP id 79so3460400ykr.31
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 03:28:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201406021209.59143.jbe@pengutronix.de>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <201406021019.38119.jbe@pengutronix.de>
 <CAOpc7mF515rdLsmY7bB+UGhWUfQMr58qotUixjuqiXK-Mdribg@mail.gmail.com>
 <201406021209.59143.jbe@pengutronix.de>
Date: Mon, 2 Jun 2014 12:28:53 +0200
Message-ID: <CAOpc7mFC_uDB3vOq=0czE7pVNy8WBaTyoWAgrRJku_9grVe7jw@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 03/10] devinfo: make the output of "devinfo DEVICE" nicer
To: Juergen Borleis <jbe@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> Copy&paste isn't possible due to the whitespaces.

Hm, I think that the "Parameters:" headline is transporting the same
information. Also, the the current documantion may be lacking, but at
http://wiki.barebox.org/doku.php you can read:

    There is a parameter model in barebox: each device can specify its
own parameters,
    which do exist for every instance. Parameters can be changed on
the command line
    with \<devid\>.\<param\>="...". For example, if you want to access
the IPv4 address
    for eth0, this is done with 'eth0.ip=192.168.0.7' and 'echo $eth0.ip'.

I could change the head line "Parameters:" to "Variables:" to
emphasize that this thing can be changed (can varying), but "Device
Parameters" is already a know term in the barebox knowledge domain.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
