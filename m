Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSk35-00018Y-CV
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 11:32:08 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 8 Feb 2016 12:33:32 +0100
References: <1454928193-19306-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454928193-19306-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201602081233.33140.jbe@pengutronix.de>
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
Subject: Re: [PATCH] driver: Fix unregister device after device probe failure
To: barebox@lists.infradead.org

On Monday 08 February 2016 11:43:13 Sascha Hauer wrote:
> When a device probe fails the device is removed from the active list.
> If then the device is unregistered afterwards it is removed from the
> active list again resulting in a crash. To fix this initialize the
> devices active list entry when removing it from the active list.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Juergen Borleis <j.borleis@pengutroni.de>

jb
-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
