Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z6y0P-00050Y-V9
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 09:27:06 +0000
Received: by laka10 with SMTP id a10so106013442lak.0
 for <barebox@lists.infradead.org>; Mon, 22 Jun 2015 02:26:43 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by mx.google.com with ESMTPSA id j2sm4074686lag.10.2015.06.22.02.26.41
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jun 2015 02:26:41 -0700 (PDT)
Date: Mon, 22 Jun 2015 12:33:07 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150622123307.9b3137c2a1ff0608d0c7d655@gmail.com>
In-Reply-To: <1434962920-5868-1-git-send-email-s.hauer@pengutronix.de>
References: <1434962920-5868-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] serial: ns16550: Fix reading clock-frequency property
To: barebox@lists.infradead.org

On Mon, 22 Jun 2015 10:48:40 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The clock-frequency property is never read because the driver

hmmm, but how qemu-malta works?

> bails out earlier when it is unable to clk_get the clk. Move
> the clock-frequency read out to the dt setup code which is
> executed before the driver bails out due to the missing clk.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
