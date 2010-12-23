Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVjoo-00023Z-A0
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 11:58:51 +0000
Message-ID: <4D133970.7090602@free-electrons.com>
Date: Thu, 23 Dec 2010 12:58:40 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
	<AANLkTik0aw9XY6Lqcmwhihwgk0CW86cGEmC+Q3=Kf-mS@mail.gmail.com>
	<201012231250.08304.jbe@pengutronix.de>
In-Reply-To: <201012231250.08304.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Add gpio command support to STM/i.MX arch
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe Kleine-Koenig <ukl@pengutronix.de>

On 12/23/2010 12:50 PM, Juergen Beisert wrote:
> Gregory CLEMENT wrote:
>> [...]
>>> are available in the git repository at:
>>>  http://git.pengutronix.de/git/jbe/for_barebox_next/ next_stm_gpio_v3
>>
>> I didn't manage to get your git tree:
>> $ git remote add -f jbe http://git.pengutronix.de/git/jbe/for_barebox_ne=
xt
>> Updating jbe
>> fatal: http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
>> not found: did you run git update-server-info on the server?
>> error: Could not fetch jbe
>>
>> Indeed http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
>> does not exist.
>> Maybe I did something wrong or maybe be you have to run git
>> update-server-info on the server ;)
> =

> Sorry, I'm not a git expert. But this will show the content:
> =

> http://git.pengutronix.de/?p=3Djbe/for_barebox_next;a=3Dsummary
> =

> Don't know, what's wrong.
> =

> @Uwe: ?
> =


The problem was that I used http protocol instead of git protocol.
this command finally worked perfectly:
$git remote add -f jbe git://git.pengutronix.de/git/jbe/for_barebox_next

Thanks to Eric B=E9nard for his advice.


> jbe


-- =

Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
