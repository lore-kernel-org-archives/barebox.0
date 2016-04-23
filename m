Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22e.google.com ([2607:f8b0:4001:c06::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1au4CZ-0007P0-6L
 for barebox@lists.infradead.org; Sat, 23 Apr 2016 20:30:51 +0000
Received: by mail-io0-x22e.google.com with SMTP id d62so52252363iof.2
 for <barebox@lists.infradead.org>; Sat, 23 Apr 2016 13:30:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160423201549.GA12096@ravnborg.org>
References: <CAOMZO5ADNbiVyOxvrqJyOWUv4NpoXDi4tqQ3kXBqxbmPqHQtMA@mail.gmail.com>
 <20160423201549.GA12096@ravnborg.org>
Date: Sat, 23 Apr 2016 17:30:27 -0300
Message-ID: <CAOMZO5D2QX-ReExBM5SRZOwnhAn_rt24TFWZj1vLFVJ4pZu2hA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: mx6qsabresd: Cannot boot after 'saveenv'
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sam,

On Sat, Apr 23, 2016 at 5:15 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Fabio.
>
>> After running the 'saveenv' command on a mx6qsabresd board, I can no
>> longer boot Barebox:
>
> You may be hit by the issue described here:
> http://lists.infradead.org/pipermail/barebox/2016-April/026781.html

Thanks for the hint, but I am using top of tree Barebox, which already
contains the fix from Sascha from that thread:

commit cb8cf33ce849f71f7fe1d717aa02b5669a54a19e
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Apr 18 11:56:00 2016 +0200

    fix erasing/protecting flashes with unspecified size

Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
