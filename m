Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SZJyM-0004jF-5k
 for barebox@lists.infradead.org; Tue, 29 May 2012 10:48:19 +0000
Date: Tue, 29 May 2012 12:48:09 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120529124809.27d0a601@eb-e6520>
In-Reply-To: <20120529104844.4df2752d@eb-e6520>
References: <4EE62D17.1090709@eukrea.com> <4EE66F10.7090409@eukrea.com>
 <20111213094800.GF27267@pengutronix.de>
 <4EE76AC1.3070603@eukrea.com>
 <20111213192606.GA27267@pengutronix.de>
 <20120529104844.4df2752d@eb-e6520>
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
Subject: Re: magicvar breaks tftp (or ramfs)
To: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Le Tue, 29 May 2012 10:48:44 +0200,
Eric B=E9nard <eric@eukrea.com> a =E9crit :
> here is the full trace.
> There is something strange as it seems a wrong value gets loaded into R3
> leading to the error.
> =

and to be complete :
commenting out =

		printf("%c\b", spinchr[spin++ % (sizeof(spinchr) - 1)]);
in show_progress.c makes the problem disapear.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
