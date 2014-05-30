Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x232.google.com ([2607:f8b0:4002:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqInX-00018d-OH
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:08:24 +0000
Received: by mail-yk0-f178.google.com with SMTP id 20so1275754yks.9
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:08:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401440856-6145-3-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-3-git-send-email-holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:08:01 +0200
Message-ID: <CAOpc7mEK1A66ePV3J4K5mdGECrZhS7PRSKbkWe7+BW4A37Es_Q@mail.gmail.com>
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
Subject: Re: [PATCH 02/10] devinfo: reduce indentation
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

barebox:/ devinfo
devices:
`-- global
`-- platform
   `-- mem0
      `-- 0x00000000-0x3fffffff (1 GiB): /dev/ram0
   `-- a01000.interrupt-controller
   `-- soc.0
      `-- 110000.dma-apbh
      `-- a00600.timer
      `-- a02000.l2-cache
...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
