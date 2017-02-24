Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chFpf-0007lh-JR
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 13:22:49 +0000
References: <20170223172022.858-1-bst@pengutronix.de>
 <20170224073227.vs2a5lhz7rc2b3g2@pengutronix.de>
 <5d50e55f-ff85-b306-aa74-fd5d2650c28a@mev.co.uk>
From: Bastian Stender <bst@pengutronix.de>
Message-ID: <b1f158a9-5dff-0b2c-4517-a5daf009eeae@pengutronix.de>
Date: Fri, 24 Feb 2017 14:22:25 +0100
MIME-Version: 1.0
In-Reply-To: <5d50e55f-ff85-b306-aa74-fd5d2650c28a@mev.co.uk>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] fbconsole: check cursor position before moving
To: Ian Abbott <abbotti@mev.co.uk>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 02/24/2017 12:18 PM, Ian Abbott wrote:
> On 24/02/17 07:32, Sascha Hauer wrote:
>> On Thu, Feb 23, 2017 at 06:20:21PM +0100, Bastian Stender wrote:
>>> Moving the cursor to x=2, y=2 with "\e[3;3H" on a 12x2 framebuffer
>>> console lead to a barebox crash while drawing the cursor. The cursor can
>>> only be moved to a valid position between (0,0) and (priv->cols,
>>> priv->rows) now.
>>>
>>> Signed-off-by: Bastian Stender <bst@pengutronix.de>
>>> ---
>>>  drivers/video/fbconsole.c | 7 +++++--
>>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
>>> index 64f7d7364e..3879741b2a 100644
>>> --- a/drivers/video/fbconsole.c
>>> +++ b/drivers/video/fbconsole.c
>>> @@ -264,10 +264,13 @@ static void fbc_parse_csi(struct fbc_priv *priv)
>>>          return;
>>>      case 'H':
>>>          video_invertchar(priv, priv->x, priv->y);
>>> +
>>>          pos = simple_strtoul(priv->csi, &end, 10);
>>> -        priv->y = pos ? pos - 1 : 0;
>>> +        priv->y = (pos && pos <= priv->rows + 1) ? pos - 1 : 0;
>>> +
>>>          pos = simple_strtoul(end + 1, NULL, 10);
>>> -        priv->x = pos ? pos - 1 : 0;
>>> +        priv->x = (pos && pos <= priv->cols + 1) ? pos - 1 : 0;
>>> +
>>
>> When moving out of the screen shouldn't we place the cursor on the
>> bottom right corner of the screen? With this patch we move it to the top
>> left corner.
>
> Or clip to each edge, something like:
>
>  priv->y = !pos ? 0 : pos < priv->rows ? pos - 1 : priv->rows - 1;
>
> Same for priv->x and priv->cols?

Sounds good to me, I'll send a new version of this patch.

Regards,
Bastian

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
