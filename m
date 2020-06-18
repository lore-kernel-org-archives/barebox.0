Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlztL-0000CF-Vo
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 19:08:05 +0000
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-15-s.hauer@pengutronix.de>
 <2620277a-6a8e-6de1-ac2b-f8b870adee08@emlix.com>
 <20200617195446.GE11869@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <b170eaf6-60cb-2f8f-aff0-547f4fa03f0a@emlix.com>
Date: Thu, 18 Jun 2020 21:08:01 +0200
MIME-Version: 1.0
In-Reply-To: <20200617195446.GE11869@pengutronix.de>
Content-Language: de-DE
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 14/19] fastboot: remove double print
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Am 17.06.20 um 21:54 schrieb Sascha Hauer:
> Another option would be to put calling of fastboot_download_finished()
> into a workqueue, or just open code it as your original series did.

... now I understand that by "open code it" you are referring to calling
net_poll!

I would have tried to run everything from fastboot_poll in a workqueue.
Since worklets are not reordered, splitting fastboot_poll into two worklets
might make sense. The worklet for calling fastboot_download_finished is
queued when fastboot_handle_type_fastboot sets active_download to false and
the worklet for the command execution is queued, as you implemented it, when
a new command arrives.

Best regards,

  Daniel

-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
