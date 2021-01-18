Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1YON-0002kJ-DX
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 17:32:40 +0000
References: <32b1e760-325e-b145-ba97-21aaee6ed868@netc.fr>
 <cc7279d9-f943-8b03-630e-fc7c41c9d0f2@pengutronix.de>
 <3add69f4-c8a3-3848-a1ea-8a041a8dafd4@netc.fr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9a9a0528-0a95-918b-6cd8-48d7c341bea8@pengutronix.de>
Date: Mon, 18 Jan 2021 18:32:34 +0100
MIME-Version: 1.0
In-Reply-To: <3add69f4-c8a3-3848-a1ea-8a041a8dafd4@netc.fr>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Environment is not overwritten at barebox update
To: AD <ad.ensi@netc.fr>, barebox@lists.infradead.org

Hello,

On 15.01.21 13:12, AD wrote:
>> You'll probably want to run saveenv -z to override this
>> and force use of the built-in environment.
> 
> If I understand well, the issue is not that my built-in env is not "updated" on the target, but that it is not loaded at startup.

Exactly.

> And it is not loaded, because I already have a modified environment, on which I did a "saveenv" previously ; as a consequence, at startup, this "local dev env" is loaded instead of the built-in one?

Yep.

> I tried a saveenv -z on a modified env, and it restores properly the built-in env at the next startup.
> 
> On some targets, I don't have the issue.
> Is it possible that on those targets, I never did a saveenv which would have created a "local" env ; as a consequence, every time I update Barebox, the built-in env is always used?

That's my assumption as well.

> As a conclusion, I guess that updating barebox with "cp ${image} /dev/mmc2" and "saveenv -z" instead of only using the first command would solve this issue.

Preferably, you'd update barebox with barebox_update ${image}. barebox_update knows
how to handle eMMC boot partitions if you need that and it can be readily exported
over Android Fastboot.

saveenv -z is something you need to do when you have written an environment manually
during development. When bringing up a board in the factory, there shouldn't be
a valid environment in the eMMC, so you could skip that step.

> In any case, many thanks for helping me to understand this mechanism.

Glad it helped,
Ahmad

> 
> Best Regards,
> AD
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
