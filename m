Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22f.google.com ([2607:f8b0:4002:c01::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0S9G-0005t4-TI
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 09:08:47 +0000
Received: by mail-yh0-f47.google.com with SMTP id v1so2826217yhn.6
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 02:08:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140626205123.GM14257@pengutronix.de>
References: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
 <20140624071749.GD15686@pengutronix.de>
 <CAOpc7mF83vBoY6an=CqSz_ovq9rVdr9tjtR32fVdNqneD=_pfw@mail.gmail.com>
 <20140626205123.GM14257@pengutronix.de>
Date: Fri, 27 Jun 2014 11:08:24 +0200
Message-ID: <CAOpc7mFRxkEahEjkAbqAgR+UjvA6SXGmkVWU0bo_FqobdRaDrA@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] arm: imx6: move imx6_init_lowlevel to single initcall
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Good idea. In addition to my board, the Sabre-Lite board also produces
this warning, even twice.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
