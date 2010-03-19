Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail2.gnudd.com ([213.203.150.91] helo=mail.gnudd.com)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nsbof-00089h-TZ
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 13:00:47 +0000
Date: Fri, 19 Mar 2010 14:00:34 +0100
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20100319130034.GA23989@morgana.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com>
References: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com> 
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
Subject: Re: [RFC] imx21ads nand boot
To: ivo.clarysse@gmail.com
Cc: barebox@lists.infradead.org

> I tried getting barebox MX21ADS to boot from NAND, but I can't get
> it to work.
> 
> Any clues, anyone ?


> +	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
> +	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */

This is 7 registers, so 28 bytes at a time. So you copy
28, 56, .... 2044, 2072

I don't know what happens when you access memory over the end of
the SRAM area. Maybe it fires a data abort or something like that?

I'd use 4 registers instead of 7, but it might well not be the problem

> +	cmp	r0, r2			/* until source end addreee [r2]    */
> +	ble	copy_loop

"blt" would be better, because when it is equal you are done. Or using
4 registers will not prevent the extra accesses.

> +	ldr	pc, =1f			/* Jump to SDRAM                    */
> +1:
> +	bl	nand_boot		/* Load barebox from NAND Flash     */
> +

Finally, you should ensure the literary pool is within the first 2kB.
I'd place ".ltorg" before the "1:", or would check the disassembly.

Hope this helps, but it may well not help

/alessandro, who has an mx21ads looking at him but also real work to deliver

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
