Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKTn-0000sX-Ej
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 15:38:09 +0000
References: <20200228204823.28415-1-dg@emlix.com>
 <20200309071451.GC3335@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <4b033b70-43b8-0dc4-aee9-77612e3c236b@emlix.com>
Date: Mon, 9 Mar 2020 16:38:05 +0100
MIME-Version: 1.0
In-Reply-To: <20200309071451.GC3335@pengutronix.de>
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
Subject: Re: [PATCH 0/3] Support for fastboot over UDP
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 03/09/20 um 08:14 schrieb Sascha Hauer:
> On Fri, Feb 28, 2020 at 09:48:20PM +0100, Daniel Gl=F6ckner wrote:
>> Contrary to U-Boot it does not send keep alive messages every 30
>> seconds because everything is executed from a poller.
> =

> How does that prevent you from sending keep palive messages? Sending
> packages from a poller should work.

When long running functions like cb_erase and cb_flash are executed in a
poller, we can't currently use another poller to check if it is time to
send a keep alive message.

If we add a slice to poller_struct that is checked and then acquired in
poller_call, it would be possible. But as I wrote, we might then want to
limit the number of pollers executed "in parallel" because of the
limited stack space.

Having a slice in poller_struct also allows pollers to list the
resources necessary to run them.

Best regards

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
