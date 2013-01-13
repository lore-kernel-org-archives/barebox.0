Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuLFA-00024Y-Bz
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 10:56:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Jan 2013 11:55:59 +0100
References: <5908839.6Wy9GUm0p4@yiqingliang-pc>
In-Reply-To: <5908839.6Wy9GUm0p4@yiqingliang-pc>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201301131156.00055.jbe@pengutronix.de>
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
Subject: Re: s3c2440's register: MRSR6
To: barebox@lists.infradead.org

Hi Yi,

niqingliang2003@gmail.com wrote:
> Hello, I compiled barebox (based on mini2440).
> and start from nand, can't start normally,
> after changed MRSRB6 to 0x30, ok.
>
> I have checked uboot, it does use 0x30 for mini2440.
> but barebox use 0x20 (work on mini2440, but not work on my 2442
> board).
>
> what does it depend on?
> in other words, what does the CL value depend on?

You should read the manual of the used SDRAM. As SDRAM is a synchronous 
memory, the SDRAM device and the SDRAM controller must be programmed in the 
same way (same CL value).

The CL value in MRSRB6 must correspond with the Trcd in the BANKCON* register.

Note: the impact of higher CL values is huge. Data throughput with 100 MHz @ 
CL2 is higher than at 133 MHz @ CL3.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
