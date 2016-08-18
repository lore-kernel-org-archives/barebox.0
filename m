Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baHUz-0007cG-Ds
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 07:12:23 +0000
Date: Thu, 18 Aug 2016 09:11:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818071159.GG20657@pengutronix.de>
References: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
 <1471420687-14367-3-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471420687-14367-3-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH 2/2] rework menu so that it can support multiline titles
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

Hi Aleksey,

See comments inline.

On Wed, Aug 17, 2016 at 10:58:07AM +0300, Aleksey Kuleshov wrote:
> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
> ---
>  commands/menu.c   | 14 +++++++---
>  common/boot.c     |  8 ++++--
>  common/menu.c     | 78 +++++++++++++++++++++++++++++++++++++++++++++++++------
>  common/menutree.c | 13 ++++++++--
>  include/menu.h    |  8 +++++-
>  5 files changed, 104 insertions(+), 17 deletions(-)
> 
> diff --git a/commands/menu.c b/commands/menu.c
> index e1079fd..d413020 100644
> --- a/commands/menu.c
> +++ b/commands/menu.c
> @@ -146,9 +146,7 @@ static int do_menu_add(struct cmd_menu *cm)
>  	if (!m->name)
>  		goto free;
>  
> -	m->display = strdup(cm->description);
> -	if (!m->display)
> -		goto free;
> +	menu_add_title(m, cm->description, NULL);
>  
>  	ret = menu_add(m);
>  
> @@ -271,7 +269,15 @@ static int do_menu_list(struct cmd_menu *cm)
>  	}
>  
>  	list_for_each_entry(m, &menus->list, list) {
> -		printf("%s: %s\n", m->name, m->display? m->display : m->name);
> +		printf("%s: ", m->name);
> +		if (m->display_lines) {
> +			int i;
> +			printf("\n");
> +			for (i = 0; i < m->display_lines; i++)
> +				printf("\t%s\n", m->display[i]);
> +		} else {
> +			printf("%s\n", m->name);
> +		}
>  		if (is_entry(cm))
>  			print_entries(m);
>  	}
> diff --git a/common/boot.c b/common/boot.c
> index e66bacb..a2f5a81 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -43,7 +43,7 @@ struct bootentries *bootentries_alloc(void)
>  
>  	if (IS_ENABLED(CONFIG_MENU)) {
>  		bootentries->menu = menu_alloc();
> -		bootentries->menu->display = basprintf("boot");
> +		menu_add_title(bootentries->menu, "boot", NULL);
>  	}
>  
>  	return bootentries;
> @@ -61,8 +61,12 @@ void bootentries_free(struct bootentries *bootentries)
>  		be->release(be);
>  	}
>  
> -	if (bootentries->menu)
> +	if (bootentries->menu) {
> +		int i;
> +		for (i = 0; i < bootentries->menu->display_lines; i++)
> +			free(bootentries->menu->display[i]);
>  		free(bootentries->menu->display);
> +	}
>  	free(bootentries->menu);
>  	free(bootentries);
>  }
> diff --git a/common/menu.c b/common/menu.c
> index 9819569..1f23e45 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -43,10 +43,13 @@ EXPORT_SYMBOL(menu_get_menus);
>  void menu_free(struct menu *m)
>  {
>  	struct menu_entry *me, *tmp;
> +	int i;
>  
>  	if (!m)
>  		return;
>  	free(m->name);
> +	for (i = 0; i < m->display_lines; i++)
> +		free(m->display[i]);
>  	free(m->display);
>  	free(m->auto_display);
>  
> @@ -164,7 +167,7 @@ static void __print_entry(const char *str)
>  static void print_menu_entry(struct menu *m, struct menu_entry *me,
>  			     int selected)
>  {
> -	gotoXY(3, me->num + 1);
> +	gotoXY(3, me->num + m->display_lines + m->skip_lines);
>  
>  	if (me->type == MENU_ENTRY_BOX) {
>  		if (me->box_state)
> @@ -234,12 +237,19 @@ static void print_menu(struct menu *m)
>  	struct menu_entry *me;
>  
>  	clear();
> -	gotoXY(2, 1);
> -	if(m->display) {
> -		__print_entry(m->display);
> +	if (m->display) {
> +		int i;
> +		for (i = 0; i < m->display_lines; i++) {
> +			gotoXY(2, 1 + i);
> +			__print_entry(m->display[i]);
> +		}
> +		m->skip_lines = 0;
>  	} else {
> +		gotoXY(2, 1);
>  		puts("Menu : ");
> -		puts(m->name);
> +		if (m->name)
> +			puts(m->name);
> +		m->skip_lines = 1;
>  	}

We could add this to menu_add():

       if (!m->display)
               m->display = xasprintf("Menu : %s", m->name);

Then we wouldn't need the if(m->display) here. Would that simplify the
code?

I haven't really understood why the m->skip_lines is necessary, but I
think it should be removed by making the if/else above unnecessary.

>  
>  	list_for_each_entry(me, &m->entries, list) {
> @@ -269,7 +279,7 @@ int menu_show(struct menu *m)
>  
>  	countdown = m->auto_select;
>  	if (m->auto_select >= 0) {
> -		gotoXY(3, m->nb_entries + 2);
> +		gotoXY(3, m->nb_entries + m->display_lines + m->skip_lines + 1);
>  		if (!m->auto_display) {
>  			printf("Auto Select in");
>  		} else {
> @@ -293,10 +303,10 @@ int menu_show(struct menu *m)
>  		}
>  	}
>  
> -	gotoXY(3, m->nb_entries + 2);
> +	gotoXY(3, m->nb_entries + m->display_lines + m->skip_lines + 1);
>  	printf("%*c", auto_display_len + 4, ' ');
>  
> -	gotoXY(3, m->selected->num + 1);
> +	gotoXY(3, m->selected->num + m->display_lines + m->skip_lines);
>  
>  	do {
>  		struct menu_entry *old_selected = m->selected;
> @@ -517,3 +527,55 @@ err_free:
>  	return ERR_PTR(ret);
>  }
>  EXPORT_SYMBOL(menu_add_command_entry);
> +
> +/*
> + * Add multiline title to menu applying (if not NULL) parser to each line.
> + * Symbols "\\n" and '\n' ARE newline indicators.
> + */
> +void menu_add_title(struct menu *m, const char *display, char *(*parser)(char *str))
> +{
> +	char *tmp, *src, *dst;
> +	int lines = 1;
> +	int i;
> +
> +	if (!strlen(display))
> +		return;
> +
> +	src = dst = tmp = xstrdup(display);
> +	/* Count lines and separate single string into multiple strings */
> +	while (*src) {
> +		if (*src == '\\') {
> +			if (*(src + 1) == 'n') {
> +				*dst = 0;
> +				src += 2;
> +				dst++;
> +				lines++;
> +				continue;
> +			}
> +		}
> +		if (*src == '\n') {
> +			*dst = 0;
> +			src++;
> +			dst++;
> +			lines++;
> +			continue;
> +		}
> +		*dst++ = *src++;
> +	}
> +	*dst = 0;
> +
> +	m->display = xzalloc(sizeof(*m->display) * lines);
> +	m->display_lines = lines;
> +
> +	for (src = tmp, i = 0; i < lines; i++) {
> +		if (parser)
> +			m->display[i] = parser(src);
> +		else
> +			m->display[i] = xstrdup(src);

What's the reason for running parser() over the separated strings? Can't
you run parser() over the original multiline string instead? What if one
of the variables expanded in shell_expand() contains a newline
character?

> +		/* Go to the next line */
> +		src += strlen(src) + 1;
> +	}
> +
> +	free(tmp);
> +}
> +EXPORT_SYMBOL(menu_add_title);
> diff --git a/common/menutree.c b/common/menutree.c
> index eb14da0..e2d364d 100644
> --- a/common/menutree.c
> +++ b/common/menutree.c
> @@ -19,6 +19,7 @@
>  #include <shell.h>
>  #include <libfile.h>
>  
> +#include <linux/ctype.h>
>  #include <linux/stat.h>
>  
>  struct menutree {
> @@ -95,6 +96,7 @@ int menutree(const char *path, int toplevel)
>  	glob_t g;
>  	int i;
>  	char *globpath, *display;
> +	size_t size;
>  
>  	menu = menu_alloc();
>  
> @@ -106,14 +108,21 @@ int menutree(const char *path, int toplevel)
>  		goto out;
>  	}
>  
> -	display = read_file_line("%s/title", path);
> +	globpath = basprintf("%s/title", path);
> +	display = read_file(globpath, &size);
> +	/* Remove trailing whitespaces */
> +	while (size > 0 && isspace(display[size - 1]))
> +		size--;

We have the strim() function for this purpose.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
