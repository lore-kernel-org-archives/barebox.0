Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVR5W-0003kL-K0
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 18:07:57 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org>
Date: Mon, 05 Nov 2012 19:07:39 +0100
In-Reply-To: <20121104183659.GC29599@game.jcrosoft.org> (Jean-Christophe
 PLAGNIOL-VILLARD's message of "Sun, 4 Nov 2012 19:36:59 +0100")
Message-ID: <87mwyvvs7o.fsf@free.fr>
MIME-Version: 1.0
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

>> +	cdev = get_current_console();
>> +	if (NULL == cdev) {
> this really look wired
> 	if (!cdev)
Yes, true. A copy-paste from loadb.c, I'll amend for v3.

>> +	if (NULL == cdev) {
> 	ditto
Yes again.

>> +		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
>> +		return -ENODEV;
>> +	}
>> +
>> +	/* Load Defaults */
>> +	if (NULL == output_file)
> 	ditto
Yes again.

>> +static void xy_flush(struct console_device *cdev, struct kfifo *fifo)
>> +{
>> +	while (cdev->tstc(cdev))
> no timeout?
No timeout indeed, on purpose.

The short explanation is that in a purge situation, all incoming data must be
flushed, regardless of the time it takes.

The long explantion is :
 - suppose the while(cdev->tstc(cdev)) takes a lot of time
 - this implies that :
   => the sender is sending data as fast as the reader can consume (not quite
   probable, but why not ...)
   => the sender has gone crazy, as in *-Modem protocol when this function is
   called, no more than 1029 bytes can be sent by a *sane* sender

So let's take as granted that the sender has gone crazy (or hardware is brain
dead). What will happen if I place a timeout here ?
 - first, I'll obviously get out of xy_flush()
 - then, as I receive garbage, xy_handle() will exit with either -EBADMSG or
 -EILSEQ. So far so good.
 - then the loady command will finish on error. Still good.
 - then the input console will take over, and execute all the garbage sent to
 it.
   This is definitely something we don't want. Imagine in the garbage you have
   something like "erase /dev/mtd0" ... Therefore, no timeout.

>> +	while (cdev->tstc(cdev))
> ditto
Ditto.

>> +			proto->total_SOH++;
> no capital please
Yep, for v3.

>> +			break;
>> +		case STX:
>> +			data_len = 1024;
>> +			hdr_found = 1;
> boolean
I don't catch that one.
Did you mean that hdr_found should be declared as "bool" ?

>> +static int parse_first_block(struct xyz_ctxt *proto, struct xy_block *blk)
>> +{
>> +	int filename_len;
>> +	char *str_num;
>> +
>> +	filename_len = strlen(blk->buf);
>> +	if (filename_len > blk->len)
>> +		return -EINVAL;
>> +	memset(proto->filename, 0, sizeof(proto->filename));
> no need just add 0 at the end
>> +	strncpy(proto->filename, blk->buf, filename_len);
Why not use strlcpy instead of memset+strncpy now I think of it ?

Cheers, and thanks for the review.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
