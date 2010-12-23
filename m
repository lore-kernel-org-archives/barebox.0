Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVjjW-0001vg-1s
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 11:53:23 +0000
Message-ID: <4D133827.4080204@eukrea.com>
Date: Thu, 23 Dec 2010 12:53:11 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
	<AANLkTik0aw9XY6Lqcmwhihwgk0CW86cGEmC+Q3=Kf-mS@mail.gmail.com>
In-Reply-To: <AANLkTik0aw9XY6Lqcmwhihwgk0CW86cGEmC+Q3=Kf-mS@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add gpio command support to STM/i.MX arch
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 23/12/2010 12:30, Gregory CLEMENT wrote:
> I didn't manage to get your git tree:
> $ git remote add -f jbe http://git.pengutronix.de/git/jbe/for_barebox_next
> Updating jbe
> fatal: http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
> not found: did you run git update-server-info on the server?
> error: Could not fetch jbe
>
> Indeed http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
> does not exist.
> Maybe I did something wrong or maybe be you have to run git
> update-server-info on the server ;)
>
try using git protocol instead of http, this works on other tree on the 
pengutronix git server :
git://git.pengutronix.de/git/jbe/for_barebox_next

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
