Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTkx0-00069K-Lk
 for barebox@lists.infradead.org; Wed, 18 Jan 2017 07:46:36 +0000
Date: Wed, 18 Jan 2017 08:46:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170118074605.xsazeyfyhtfxmuw7@pengutronix.de>
References: <CAAMcf8CA-eTzHhQFXct7-udO1sYifL3zGULsoxiW9U1hcvKMvw@mail.gmail.com>
 <20170111200757.x33vfb4sdrsu4kmk@pengutronix.de>
 <d8c10ecb-f349-eae5-2fe9-ccf407e1d31c@mev.co.uk>
 <CAAMcf8D+fzttYtBFAZ6EBeZ3+9RAGpTqLtJ0skzCQL81PsDd9w@mail.gmail.com>
 <20170116073652.b7vrnj2k6u3jejmt@pengutronix.de>
 <CAAMcf8DQJHGHXvozzU9WNb67t1PmB8o2aejk8HYaFpFPWZTsbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8DQJHGHXvozzU9WNb67t1PmB8o2aejk8HYaFpFPWZTsbA@mail.gmail.com>
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
Subject: Re: scripts/checkpatch.pl is deprecated
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org, Ian Abbott <abbotti@mev.co.uk>, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Mon, Jan 16, 2017 at 06:34:19PM +0100, Vicente Bergas wrote:
> On Mon, Jan 16, 2017 at 8:36 AM, Sascha Hauer <s.hauer@pengutronix.de> wr=
ote:
> > On Sun, Jan 15, 2017 at 08:42:42PM +0100, Vicente Bergas wrote:
> >> On Thu, Jan 12, 2017 at 11:27 AM, Ian Abbott <abbotti@mev.co.uk> wrote:
> >> > On 11/01/17 20:07, Uwe Kleine-K=F6nig wrote:
> >> >>
> >> >> On Wed, Jan 11, 2017 at 08:35:11PM +0100, Vicente Bergas wrote:
> >> >>>
> >> >>> Hello,
> >> >>> when using scripts/checkpatch.pl it may report:
> >> >>>   Unescaped left brace in regex is deprecated,
> >> >>>   passed through in regex at scripts/checkpatch.pl line 2267.
> >> >>
> >> >>
> >> >> I bet this scripts originates from the kernel. So I'd recommend to =
test
> >> >> if their version is affected to. If yes, report to them, if not, up=
date
> >> >> barebox to latest Linux version.
> >> >
> >> >
> >> > In the Linux kernel, this was fixed in commit
> >> > 6b8c69e4384b0bcf1936c2137804840212daaf69 ("checkpatch: fix another l=
eft
> >> > brace warning"), which made it into the the 4.6 kernel.
> >>
> >> This commit applies as is in barebox, so, can it be applied?
> >> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/patch/=
?id=3D6b8c69e4384b0bcf1936c2137804840212daaf69
> >
> > Yes. Can you send this as patch to the list?
> =

> Why does it need to be in the list? can not it be applied directly?

Could be, but I am lazy ;)
Anyway, in this case it was easy enough to wget/git-am the patch. Just
did that.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
