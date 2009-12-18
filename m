Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLbeh-0006w7-Ot
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 12:10:00 +0000
Date: Fri, 18 Dec 2009 13:09:21 +0100
From: Bjoern Buerger <b.buerger@pengutronix.de>
Message-ID: <20091218120921.GA10116@pengutronix.de>
References: <20091217083149.GI15126@pengutronix.de>
	<4B2AC2F9.7080207@necel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B2AC2F9.7080207@necel.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Renaming done / new repository
To: barebox@lists.infradead.org

* Shinya Kuribayashi (shinya.kuribayashi@necel.com) [091218 00:47]:
> Nice.  Is there any chance we can get the repository via http?
  =

Yes, all repositories are accessible via http, git and ssh.
  =

> fatal: http://git.pengutronix.de/git/barebox.git/info/refs not found: did=
 you run git update-server-info on the server?

Ah, sorry - there was a post-update hook missing. =

fixed. =



Bj=F8rn

-- =

Pengutronix e.K.                           | Bj=F8rn B=FCrger              =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5002 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
