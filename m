Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x242.google.com ([2607:f8b0:4001:c06::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2iFZ-00018Q-UR
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 18:30:35 +0000
Received: by mail-io0-x242.google.com with SMTP id h70so6455854ioi.4
 for <barebox@lists.infradead.org>; Thu, 12 Oct 2017 11:30:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171012175228.16710-1-nikita.yoush@cogentembedded.com>
References: <20171012175228.16710-1-nikita.yoush@cogentembedded.com>
From: Chris Healy <cphealy@gmail.com>
Date: Thu, 12 Oct 2017 11:30:11 -0700
Message-ID: <CAFXsbZr9Td2HwJ+Ki7965O9feG7cYvfj+ca40juxmUgUeHDKXg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] 2d-primitives: fix missing pixel in gu_draw_line()
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Full series is:

Tested-by: Chris Healy <cphealy@gmail.com>

Was tested on sandbox with various resolutions between 320x200 up to 1280x768.

On Thu, Oct 12, 2017 at 10:52 AM, Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
> When drawing line from (x1, y1) to (x2, y2), pixel at (x2, y2) should
> be included.
>
> Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
> ---
>  lib/gui/2d-primitives.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
> index 0f29b32ba..89acc092d 100644
> --- a/lib/gui/2d-primitives.c
> +++ b/lib/gui/2d-primitives.c
> @@ -61,7 +61,7 @@ static void draw_simple_line(struct screen *sc,
>                 swap(y1, y2);
>         }
>
> -       for (x = x1; x < x2 - 1; x++) {
> +       for (x = x1; x <= x2; x++) {
>                 if (!dash ||
>                     (++pixel % (2 * dash)) < dash)
>                         illuminate(sc->info,
> @@ -137,7 +137,7 @@ void gu_draw_line(struct screen *sc,
>         j   = y1;
>         eps = dy - dx;
>
> -       for (i = x1; i <= x2 - 1; i++) {
> +       for (i = x1; i <= x2; i++) {
>                 if (!dash ||
>                     (++pixel % (2 * dash)) > dash) {
>                         illuminate(sc->info,
> --
> 2.11.0
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
