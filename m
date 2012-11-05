Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVROr-00065L-LS
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 18:27:55 +0000
Received: from mail239.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 191D5FFB8FF
 for <barebox@lists.infradead.org>; Mon,  5 Nov 2012 19:38:30 +0100 (CET)
Date: Mon, 5 Nov 2012 19:25:44 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121105182544.GB25679@game.jcrosoft.org>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org> <87mwyvvs7o.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mwyvvs7o.fsf@free.fr>
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
Subject: Re: [PATCH v2 1/2] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 19:07 Mon 05 Nov     , Robert Jarzmik wrote:
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> 
> >> +	cdev = get_current_console();
> >> +	if (NULL == cdev) {
> > this really look wired
> > 	if (!cdev)
> Yes, true. A copy-paste from loadb.c, I'll amend for v3.
> 
> >> +	if (NULL == cdev) {
> > 	ditto
> Yes again.
> 
> >> +		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
> >> +		return -ENODEV;
> >> +	}
> >> +
> >> +	/* Load Defaults */
> >> +	if (NULL == output_file)
> > 	ditto
> Yes again.
> 
> >> +static void xy_flush(struct console_device *cdev, struct kfifo *fifo)
> >> +{
> >> +	while (cdev->tstc(cdev))
> > no timeout?
> No timeout indeed, on purpose.
> 
> The short explanation is that in a purge situation, all incoming data must be
> flushed, regardless of the time it takes.
> 
> The long explantion is :
>  - suppose the while(cdev->tstc(cdev)) takes a lot of time
>  - this implies that :
>    => the sender is sending data as fast as the reader can consume (not quite
>    probable, but why not ...)
>    => the sender has gone crazy, as in *-Modem protocol when this function is
>    called, no more than 1029 bytes can be sent by a *sane* sender
> 
> So let's take as granted that the sender has gone crazy (or hardware is brain
> dead). What will happen if I place a timeout here ?
>  - first, I'll obviously get out of xy_flush()
>  - then, as I receive garbage, xy_handle() will exit with either -EBADMSG or
>  -EILSEQ. So far so good.
>  - then the loady command will finish on error. Still good.
>  - then the input console will take over, and execute all the garbage sent to
>  it.
>    This is definitely something we don't want. Imagine in the garbage you have
>    something like "erase /dev/mtd0" ... Therefore, no timeout.
my issue is how can I interrupt it from barebox
> 
> >> +	while (cdev->tstc(cdev))
> > ditto
> Ditto.
> 
> >> +			proto->total_SOH++;
> > no capital please
> Yep, for v3.
> 
> >> +			break;
> >> +		case STX:
> >> +			data_len = 1024;
> >> +			hdr_found = 1;
> > boolean
> I don't catch that one.
> Did you mean that hdr_found should be declared as "bool" ?
yes
> 
> >> +static int parse_first_block(struct xyz_ctxt *proto, struct xy_block *blk)
> >> +{
> >> +	int filename_len;
> >> +	char *str_num;
> >> +
> >> +	filename_len = strlen(blk->buf);
> >> +	if (filename_len > blk->len)
> >> +		return -EINVAL;
> >> +	memset(proto->filename, 0, sizeof(proto->filename));
> > no need just add 0 at the end
> >> +	strncpy(proto->filename, blk->buf, filename_len);
> Why not use strlcpy instead of memset+strncpy now I think of it ?
> 
yeap

can you put the v3 on a tree somewhere so I can pull it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
