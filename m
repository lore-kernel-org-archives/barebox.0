Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzLd-0005sW-An
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 18:33:15 +0000
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-16-s.hauer@pengutronix.de>
 <946b4a56-1c05-6dbd-32d1-c100d6681065@emlix.com>
 <20200618115940.GH11869@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <510812c2-03a0-59a0-8d09-5c3c0f2f2593@emlix.com>
Date: Thu, 18 Jun 2020 20:33:03 +0200
MIME-Version: 1.0
In-Reply-To: <20200618115940.GH11869@pengutronix.de>
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
Subject: Re: [PATCH 15/19] fastboot net: implement fastboot over UDP
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

Hello Sascha,

Am 18.06.20 um 13:59 schrieb Sascha Hauer:
> On Wed, Jun 17, 2020 at 09:32:45PM +0200, Daniel Gl=F6ckner wrote:
>>> +static void fastboot_start_download_net(struct fastboot *fb)
>>> +{
>>> +	struct fastboot_net *fbn =3D container_of(fb, struct fastboot_net,
>>> +						fastboot);
>>> +
>>> +	fastboot_start_download_generic(fb);
>>> +	fbn->active_download =3D true;
>>> +}
>>
>> You didn't base v4 on v3, did you?
> =

> No, you sent v3 while I had different changes in my version already.
> =

>> If FASTBOOT_INIT is received before active_download is set to true, nobo=
dy
>> will close fb->download_fd.
> =

> Ok, I'll add a fastboot_abort() function like you did in v3.

What I was referring to are the three additional lines in v3 that call
fastboot_download_finished here instead of setting active_download to true
when reinit is already true.

>>> +static void fastboot_send_keep_alive(struct poller_struct *poller)
>>> +{
>>> +	struct fastboot_net *fbn =3D container_of(poller, struct fastboot_net,
>>> +					       keep_alive_poller);
>>> +
>>> +	if (!fbn->send_keep_alive)
>>> +		return;
>>> +
>>> +	if (!is_timeout_non_interruptible(fbn->host_waits_since,
>>> +					 30ULL * NSEC_PER_SEC))
>>> +		return;
>>> +
>>> +	if (!fbn->may_send)
>>> +		return;
>>> +
>>> +	fastboot_tx_print(&fbn->fastboot, FASTBOOT_MSG_INFO, "still busy");
>>> +
>>> +	fbn->host_waits_since =3D get_time_ns();
>>
>> Why do we need this line?
>> host_waits_since is assigned get_time_ns() when may_send is set to true.
> =

> It is needed to reinitialize the timeout when we sent the message once.
> Without this we would send the "still busy" message every few ms after
> we've sent it for the first time.

No, because sending a message sets may_send to false and it stays false
until we update host_waits_since in fastboot_handle_type_fastboot.

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
