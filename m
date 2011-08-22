Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvZMJ-0003oe-Jf
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 18:36:29 +0000
Received: by wwf10 with SMTP id 10so3964593wwf.18
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 11:36:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110822065844.GW31404@pengutronix.de>
References: <1313953720-31008-1-git-send-email-antonynpavlov@gmail.com>
	<20110822065844.GW31404@pengutronix.de>
Date: Mon, 22 Aug 2011 22:36:24 +0400
Message-ID: <CAA4bVAHLeVzJsi1CQE3w-QV91d-m9DdD88m9K=jXGq7GvhAO=w@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [RFC-PATCH] Fix loads command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22 August 2011 10:58, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Antony,
>
> On Sun, Aug 21, 2011 at 11:08:40PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0commands/Kconfig =A0| =A0 =A07 +-
>> =A0commands/Makefile | =A0 =A01 -
>> =A0commands/loads.c =A0| =A0295 ++++++++++++++++++++++++++++++----------=
-------------
>> =A0common/Makefile =A0 | =A0 =A01 +
>> =A04 files changed, 171 insertions(+), 133 deletions(-)
>
> There seem to be many whitespace cleanups in this patch. Can you please
> post a seperate patch for these for easier review?

...

> A good start would be to cleanup the coding style and to make it compile
> again.

I shall send the new patch series in a few minutes.

This patch series will make loads compile again and fix coding style /
compiler's warning.

For simplicity baudrate switching code was removed.
We can add it in the future. Also it isn't very difficult to switch
from direct memory writing to file descriptor writing.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
