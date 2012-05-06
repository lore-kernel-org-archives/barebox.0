Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SR7yf-0000zr-6w
 for barebox@lists.infradead.org; Sun, 06 May 2012 20:22:46 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3397emhaw.fsf@intrepid.localdomain>
 <20120506181754.GA4141@pengutronix.de>
Date: Sun, 06 May 2012 22:19:16 +0200
In-Reply-To: <20120506181754.GA4141@pengutronix.de> (Sascha Hauer's message of
 "Sun, 6 May 2012 20:17:54 +0200")
Message-ID: <m3y5p5xdtn.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH] ARM: put a valid "barebox" signature in the header on
 big-endian systems.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> -		".word 0x65726162\n"			/* 'bare' */
>> -		".word 0x00786f62\n"			/* 'box' */
>> +		".asciz \"barebox\"\n"
>>  		".word _text\n"				/* text base. If copied there,
>>  							 * barebox can skip relocation
>
> Does the barebox filetype detection need a fix aswell?

I guess so.

> enum filetype file_detect_type(void *_buf)
> {
>         u32 *buf = _buf;
>         u8 *buf8 = _buf;
>
>         if (strncmp(buf8, "#!/bin/sh", 9) == 0)
>                 return filetype_sh;

BTW there can be a white space between "#!" part and the interpreter
name.

>         if (buf[8] == 0x65726162 && buf[9] == 0x00786f62)
>                 return filetype_arm_barebox;
>
> This seems wrong on big endian systems.

Definitely.
A memcmp() would be better (I don't know about the buffer length).
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
