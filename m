Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9rOS-0007Kc-ML
	for barebox@lists.infradead.org; Wed, 13 Apr 2011 04:09:29 +0000
Date: Wed, 13 Apr 2011 07:09:12 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110413040912.GA14112@jasper.tkos.co.il>
References: <BANLkTinHQSS1rnKifQ+VYyA27Af+vBYRkg@mail.gmail.com>
	<20110412042538.GA20619@jasper.tkos.co.il>
	<BANLkTikjDcO9Uj0+y2Sqq6Z=B3oOogjaCA@mail.gmail.com>
	<20110413030149.GE4709@game.jcrosoft.org>
	<BANLkTik4m6GxTeaBW6Nt6XO=xqwTwY8Y1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTik4m6GxTeaBW6Nt6XO=xqwTwY8Y1Q@mail.gmail.com>
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

Hi Marko,

On Tue, Apr 12, 2011 at 09:42:47PM -0600, Marko Milutinovic wrote:
> One last question though, does this section have to be populated manually?
> Do i have to explicitly load a env.bin file to my device and then copy it to
> the env0 partition? Is there a way to have this loaded onto my main
> bootloader .bin file when it gets compiled?

If you set CONFIG_DEFAULT_ENVIRONMENT and CONFIG_DEFAULT_ENVIRONMENT_PATH in 
your .config, then you have a default environment compiled into your Barebox 
image. Then, to save this default environment into your flash just run 
'saveenv'.

baruch

> On Tue, Apr 12, 2011 at 9:01 PM, Jean-Christophe PLAGNIOL-VILLARD <
> plagnioj@jcrosoft.com> wrote:
> 
> > Hi,
> >
> >        could you send your board patch and the log of your console
> >        so we can help you more
> >
> >        btw please do not post in HTML
> >
> > Best Regards,
> > J.
> > On 12:42 Tue 12 Apr     , Marko Milutinovic wrote:
> > >    Hello,
> > >    1. I don't think that I took any steps to save the environment. Not
> > sure
> > >    how to go about doing that. I have the 'env\bin\init' file under my
> > board
> > >    directory. I was under the impressions this would get built in
> > >    automatically. Additionally in my init.c file for my board I have the
> > >    following lines:
> > >    devfs_add_partition("nor0", 0x01000000, 0x10000, PARTITION_FIXED,
> > >    "self_raw");
> > >    devfs_add_partition("nor0", 0x01010000, 0x1000, PARTITION_FIXED,
> > "env0");
> > >    2. When my board boots i get the following output lines
> > >    Malloc space: .(rest of text ...)
> > >    Stack space: (rest of text ...)
> > >    Open /dev/env0 error2
> > >    running /env/bin/init...
> > >    not found
> > >    barebox:
> > >    Thanks
> > >    Marko
> > >
> > >    On Mon, Apr 11, 2011 at 10:25 PM, Baruch Siach <baruch@tkos.co.il>
> > wrote:
> > >
> > >      Hi Marko,
> > >      On Mon, Apr 11, 2011 at 09:18:53PM -0600, Marko Milutinovic wrote:
> > >      > I have barebox working almost fully on my board, except I can't
> > get
> > >      the
> > >      > environment to load ... I have an env0 partition allocated and
> > under
> > >      my
> > >      > board I have the /env/bin/init file. Anyone have any tips as to
> > what I
> > >      am
> > >      > missing or can they point me to another resource?
> > >
> > >      More info is needed:
> > >
> > >      1. What did you do to save the environment?
> > >
> > >      2. What is your indication that the environment doesn't "load"?
> > >
> > >      baruch
> > >      --

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
