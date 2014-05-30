Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x235.google.com ([2607:f8b0:4002:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqImp-0000hU-3F
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:07:39 +0000
Received: by mail-yk0-f181.google.com with SMTP id 131so1258734ykp.26
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:07:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401440856-6145-4-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-4-git-send-email-holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:17 +0200
Message-ID: <CAOpc7mHnKgzk4Usm0t21YZe3WT1WPRF47U8oEHfecbJyqoG90A@mail.gmail.com>
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
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Example output before of "devinfo fb0":

    resources:
    num   : 0
    start : 0x4c242000
    size  : 0x00300000
    driver: none
    bus: none

    available modes:
    hsd100pxn1           1024x768@0

    Parameters:
              enable = 0
           mode_name = hsd100pxn1 ("hsd100pxn1")


Example output after this patch:

    Resources:
      num: 0
      start: 0x4c242000
      size: 0x00300000
    Available modes:
      hsd100pxn1: 1024x768@0
    Parameters:
      enable: 0
      mode_name: hsd100pxn1 ("hsd100pxn1")

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
