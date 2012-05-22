Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SWuKs-0001Sn-26
 for barebox@lists.infradead.org; Tue, 22 May 2012 19:01:36 +0000
Date: Tue, 22 May 2012 21:01:19 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120522210119.00028117@eb-e6520>
In-Reply-To: <20120522184838.GN30400@pengutronix.de>
References: <CAONxwYMN4tDV-0vcophuLRA0rJC_T6OaLNyZM22yoso09cJFRg@mail.gmail.com>
 <20120522184838.GN30400@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: SD card probe failure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

Le Tue, 22 May 2012 20:48:38 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> Does the SD card work in the first stage loader? If yes, you could try
> to remove the mux setup from barebox, so that you can be sure that you
> do not misconfigure things that were already configured correctly.
> I have no hardware handy to test the driver on a i.MX25, but Erics
> Eukrea board has MMC support, so I believe the driver should work in
> general.
> =

I don't remembed if SD is working under barebox on the i.MX25 but at
least our default configuration was booting from a SDCard the last time
I tested it.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
