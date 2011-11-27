Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RUn8V-0005AM-Pw
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 22:23:49 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1322309851-22224-1-git-send-email-robert.jarzmik@free.fr>
 <1322309851-22224-2-git-send-email-robert.jarzmik@free.fr>
 <4ED16DE0.1010700@pengutronix.de>
Date: Sun, 27 Nov 2011 23:23:37 +0100
In-Reply-To: <4ED16DE0.1010700@pengutronix.de> (Marc Kleine-Budde's message of
 "Sat, 26 Nov 2011 23:53:20 +0100")
Message-ID: <87sjl98as6.fsf@free.fr>
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
Subject: Re: [PATCH V2 1/3] arm/mach-pxa: Initial Intel/Marvell PXA support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

Marc Kleine-Budde <mkl@pengutronix.de> writes:

> On 11/26/2011 01:17 PM, Robert Jarzmik wrote:
>> From: Marc Kleine-Budde <mkl@pengutronix.de>
>> 
>> The core support was brought by Marc and Sascha.
>> The cache choice was fixed by Luotao Fu.
>> Some gpio and devices addons were provided by Robert.
>> 
>> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
>> Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>
> Nitpick: Your S-o-b should be the last one.
> ...more nitpicking inline
Yep.

I think I'll take that patch over a bit more.
As it had some signoffs, I didn't take any time to fix it. Now you're asking for
more, I'll fix it more deeply, so that checkpatch doesn't complain, neither
sparse.
That means the former signoffs will have to be given again I'm afraid.

>> +# Xscale PXA25x, PXA27x
>> +config CPU_XSCALE
>> +	bool
>> +	select CPU_32v4T
>
> Sascha, which CPU is the correct one?
If your question is "is the PXA a 32bits, ARMv5, with MMU/caches of the ARMv4
variant", then the answer is yes. The linux kernel agrees with Intel
specification on that point.

...zip...
>> + * You should have received a copy of the GNU General Public License
>> + * along with this program; if not, write to the Free Software
>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>> + * MA 02111-1307 USA
>> + */
>
> please remove the FSF's address.
Sure, for all occurences.

>> diff --git a/arch/arm/mach-pxa/gpio.c b/arch/arm/mach-pxa/gpio.c
>> new file mode 100644
>> index 0000000..f0c8c99
>> --- /dev/null
>> +++ b/arch/arm/mach-pxa/gpio.c
>> @@ -0,0 +1,70 @@
>> +/*
>> + *  linux/arch/arm/plat-pxa/gpio.c
>
> can you adjust the path or remove it completely?
Remove, yes.


-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
