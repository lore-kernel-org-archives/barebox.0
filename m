Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9qT4-00075s-G3
	for barebox@lists.infradead.org; Wed, 13 Apr 2011 03:10:11 +0000
Date: Wed, 13 Apr 2011 05:01:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110413030149.GE4709@game.jcrosoft.org>
References: <BANLkTinHQSS1rnKifQ+VYyA27Af+vBYRkg@mail.gmail.com>
	<20110412042538.GA20619@jasper.tkos.co.il>
	<BANLkTikjDcO9Uj0+y2Sqq6Z=B3oOogjaCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTikjDcO9Uj0+y2Sqq6Z=B3oOogjaCA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: First time on this list
To: Marko Milutinovic <markomilutin@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

	could you send your board patch and the log of your console
	so we can help you more

	btw please do not post in HTML

Best Regards,
J.
On 12:42 Tue 12 Apr     , Marko Milutinovic wrote:
>    Hello,
>    1. I don't think that I took any steps to save the environment. Not sure
>    how to go about doing that. I have the 'env\bin\init' file under my board
>    directory. I was under the impressions this would get built in
>    automatically. Additionally in my init.c file for my board I have the
>    following lines:
>    devfs_add_partition("nor0", 0x01000000, 0x10000, PARTITION_FIXED,
>    "self_raw");
>    devfs_add_partition("nor0", 0x01010000, 0x1000, PARTITION_FIXED, "env0");
>    2. When my board boots i get the following output lines
>    Malloc space: .(rest of text ...)
>    Stack space: (rest of text ...)
>    Open /dev/env0 error2 
>    running /env/bin/init...
>    not found
>    barebox:
>    Thanks
>    Marko
> 
>    On Mon, Apr 11, 2011 at 10:25 PM, Baruch Siach <baruch@tkos.co.il> wrote:
> 
>      Hi Marko,
>      On Mon, Apr 11, 2011 at 09:18:53PM -0600, Marko Milutinovic wrote:
>      > I have barebox working almost fully on my board, except I can't get
>      the
>      > environment to load ... I have an env0 partition allocated and under
>      my
>      > board I have the /env/bin/init file. Anyone have any tips as to what I
>      am
>      > missing or can they point me to another resource?
> 
>      More info is needed:
> 
>      1. What did you do to save the environment?
> 
>      2. What is your indication that the environment doesn't "load"?
> 
>      baruch
>      --
>                                                          ~. .~   Tk Open
>      Systems
>      =}------------------------------------------------ooO--U--Ooo------------{=
>        - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
