Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWlDp-0008MN-Tm
 for barebox@lists.infradead.org; Tue, 22 May 2012 09:17:42 +0000
Received: by bkwj4 with SMTP id j4so6190011bkw.36
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 02:17:39 -0700 (PDT)
Message-ID: <4FBB59AC.6050202@gmail.com>
Date: Tue, 22 May 2012 15:17:32 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <20120517175244.GH30400@pengutronix.de>
 <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
 <1337334211-12576-7-git-send-email-agalakhov@gmail.com>
 <20120521200249.GF30400@pengutronix.de>
In-Reply-To: <20120521200249.GF30400@pengutronix.de>
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
Subject: Re: [PATCHv4 6/7] S5P DRAM support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22.05.2012 02:02, Sascha Hauer wrote:
> On Fri, May 18, 2012 at 03:43:30PM +0600, Alexey Galakhov wrote:
>> +void __bare_init s5p_init_dram_bank(uint32_t base, uint32_t mc0, uint32_t mc1)
>> +{
>> +#ifdef S5P_DRAM_LPDDR
>> +	uint32_t reg = 0x100;
>> +#endif
>> +#ifdef S5P_DRAM_LPDDR2
>> +	uint32_t reg = 0x200;
>> +#endif
>> +#ifdef S5P_DRAM_DDR2
>> +	uint32_t reg = 0x400;
>> +#endif
>> +	reg |= (S5P_DRAM_BURST) << 20;
>> +#ifdef S5P_DRAM_16BIT
>> +	reg |= 0x1000;
>> +#else /* 32-bit */
>> +	reg |= 0x2000;
>> +#endif
> 
> Since this function is called from board specific code, can we pass in
> the DDR/DDR2 16BIT/32BIT settings as arguments to this function and
> get rid of these ifdefs?
> 
> Sascha

Thank you for the question. Most likely not.

According to the datasheet, LPDDR/LPDDR2/DDR2 initialization sequence is
completely different. It is in init_seq() function. Since I have no
LPDDR(2) hardware to test, I coded the DDR2 version only. A runtime
switch like that:

switch(mode) {
case LPDDR:
	lpddr_init_seq();
	break;
case LPDDR2:
	lpddr2_init_seq();
	break;
case DDR2:
	ddr2_init_seq();
	break;
}

is too expensive for S5PV210's __bare_init which is very limited in
space. Thus it is better to have only one function compiled in.

Of course, it is possible to get rid of #ifdefs in s5p_init_dram_bank()
but #ifdef is still needed for init_seq(). Ot is there any better solution?

Regards,
--
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
