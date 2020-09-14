Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHok7-0001SX-3h
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:42:03 +0000
References: <20200914100553.24808-1-a.fatoum@pengutronix.de>
 <20200914100553.24808-3-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b37d7058-b96a-e790-8d7c-2225c1fe130d@pengutronix.de>
Date: Mon, 14 Sep 2020 15:42:01 +0200
MIME-Version: 1.0
In-Reply-To: <20200914100553.24808-3-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master 3/7] sandbox: support escaping commas in --image
 filenames
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 9/14/20 12:05 PM, Ahmad Fatoum wrote:
> Some tools like afl-fuzz generate file names containing commas.
> Allow escaping the commas in the file names, so they can be passed
> to barebox.

/* Unit tests for strsep_unescaped */

#include <stdio.h>
#include <string.h>
#include <assert.h>

char *strsep_unescaped(char **s, const char *ct)
{
        char *sbegin = *s, *hay;
        const char *needle;
        size_t shift = 0;

        if (sbegin == NULL)
                return NULL;

        for (hay = sbegin; *hay != '\0'; ++hay) {
                *hay = hay[shift];

                if (*hay == '\\') {
                        *hay = hay[++shift];
                        if (*hay != '\\')
                                continue;
                }

                for (needle = ct; *needle != '\0'; ++needle) {
                        if (*hay == *needle)
                                goto match;
                }
        }

        *s = NULL;
        return sbegin;

match:
        *hay = '\0';
        *s = &hay[shift + 1];

        return sbegin;
}

static _Bool streq(const char *a, const char *b)
{
	if (a == NULL || b == NULL)
		return a == b;
	return strcmp(a, b) == 0;
}

#define ensure(_s, d, ...) do {                              \
	char *expected[] = { __VA_ARGS__,  NULL };           \
	char *tok;                                           \
	char *s = strdup(_s);                                \
	int i = 0;                                           \
	while ((tok = strsep_unescaped(&s, d))) {            \
		printf("'%s' <> '%s'?\n", tok, expected[i]);   \
		assert(streq(tok, expected[i]));             \
		i++;                                         \
	}                                                    \
} while (0)

int main(int argc, char *argv[])
{
	setbuf(stdout, NULL);
	ensure("aaa", ",",       /* => */ "aaa", NULL);
	ensure("bla,bla", ",",   /* => */ "bla", "bla");
	ensure("bla,bAL", ",",   /* => */ "bla", "bAL");
	ensure("2e\\,,bAL", ",", /* => */ "2e,", "bAL");
	ensure("1\\,2,dol", ",", /* => */ "1,2", "dol");
	ensure("1-2,\\,", ",",   /* => */ "1-2", ",");
	ensure("1\\,2,\\,", ",", /* => */ "1,2", ",");
	ensure("oh,oh,oh", ",",  /* => */ "oh", "oh", "oh");
	ensure("oh\\,,oh", ",",  /* => */ "oh,", "oh");
	ensure("oh\\,,,oh", ",", /* => */ "oh,", "", "oh");
	ensure("1-2,\\,", ",",   /* => */   "1-2", ",");
	ensure("1280\\,1024.png,ro", ",",      /* => */ "1280,1024.png", "ro");
	ensure("1280\\1024.png,ro", ",",       /* => */ "12801024.png", "ro");
	ensure("1280\\\\1024.png,ro", ",",     /* => */ "1280\\1024.png", "ro");
	ensure("1280.png\\\\ro", "\\",         /* => */ "1280.png", "ro");
	ensure("1280\\1024.png,ro", "\\",      /* => */ "12801024.png,ro", NULL);
	ensure("1280\\\\1024.png,ro", "\\",    /* => */ "1280", "1024.png,ro", NULL);
	ensure("1280\\\\1024.png\\ro", "\\",   /* => */ "1280", "1024.pngro");
	ensure("1280\\\\1024.png\\\\ro", "\\", /* => */ "1280", "1024.png", "ro");
	ensure("/file/aa\\,b\\,b\\,b,ro,cdev", ",", /* => */ "/file/aa,b,b,b", "ro", "cdev");

	printf("\nAll succeeded\n");
}



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
